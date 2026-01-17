const fs = require("node:fs");
const path = require("path");
const { exec } = require("child_process");

const BASE_URL = "https://api.modrinth.com/v2";
const DB_FILE = path.join("generated", "./modrinth.json");
const FETCH_LIMIT = 100;
const TARGET_VERSION = "1.21.11";

const FETCH_OPTIONS = {
  headers: { "User-Agent": "nix-modrinth-updater/1.0" },
};

async function fetchJSON(url) {
  const res = await fetch(url, FETCH_OPTIONS);
  if (!res.ok) throw new Error(`HTTP ${res.status} on ${url}`);
  return await res.json();
}

function deepSort(obj) {
  if (Array.isArray(obj)) {
    return obj
      .map(deepSort)
      .sort((a, b) => JSON.stringify(a).localeCompare(JSON.stringify(b)));
  } else if (obj !== null && typeof obj === "object") {
    return Object.keys(obj)
      .sort()
      .reduce((result, key) => {
        result[key] = deepSort(obj[key]);
        return result;
      }, {});
  } else {
    return obj;
  }
}

function getHash(url) {
  return new Promise((resolve, reject) => {
    console.log(`  Fetching hash for ${url}`);
    exec(
      `nix-prefetch-url "${url}" --name "modrinth-resource-pack"`,
      (error, stdout) => {
        if (error) return reject(error);
        resolve(stdout.trim().split("\n").pop());
      },
    );
  });
}

async function getAllModrinthMetadata() {
  let allHits = [];
  let offset = 0;
  const limit = 100;
  const facets = encodeURIComponent(
    JSON.stringify([
      ["project_type:resourcepack"],
      [`versions:${TARGET_VERSION}`],
    ]),
  );

  while (true) {
    console.log(`Fetching Modrinth search results (offset ${offset})...`);
    const data = await fetchJSON(
      `${BASE_URL}/search?facets=${facets}&limit=${limit}&offset=${offset}`,
    );
    allHits.push(...data.hits);
    if (data.hits.length < limit) break;
    offset += limit;
  }
  return allHits;
}

async function updateModrinth() {
  // Load flat DB: { "slug": { ... } }
  const localDB = fs.existsSync(DB_FILE)
    ? JSON.parse(fs.readFileSync(DB_FILE, "utf-8"))
    : {};

  const remoteMetadata = await getAllModrinthMetadata();
  console.log(
    `Found ${remoteMetadata.length} resource packs matching ${TARGET_VERSION}.`,
  );

  const packagesToUpdate = [];
  const packagesUpToDate = [];

  for (const pkg of remoteMetadata) {
    const local = localDB[pkg.slug];

    // Cache check: slug exists and timestamp hasn't changed
    if (local && local.date_modified === pkg.date_modified) {
      packagesUpToDate.push({ ...local, slug: pkg.slug });
    } else {
      packagesToUpdate.push(pkg);
    }
  }

  console.log(`${packagesUpToDate.length} packs up to date.`);
  console.log(`${packagesToUpdate.length} packs need updates/fetching.`);

  const batch = packagesToUpdate
    .sort(() => Math.random() - 0.5)
    .slice(0, FETCH_LIMIT);
  if (batch.length > 0) {
    console.log(`Processing batch of ${batch.length}...`);
  }

  const newlyHashed = [];
  for (const pkg of batch) {
    try {
      // Fetch specifically for the target version to get the right download URL
      const versions = await fetchJSON(
        `${BASE_URL}/project/${pkg.project_id}/version?game_versions=["${TARGET_VERSION}"]`,
      );

      if (versions.length === 0) continue;

      const latest = versions[0];
      const primaryFile =
        latest.files.find((f) => f.primary) || latest.files[0];
      const hash = await getHash(primaryFile.url);

      newlyHashed.push({
        slug: pkg.slug,
        author: pkg.author,
        title: pkg.title,
        description: pkg.description,
        date_modified: pkg.date_modified,
        version: latest.version_number,
        download_url: primaryFile.url,
        filename: primaryFile.filename,
        hash: hash,
        dependencies: latest.dependencies.map(
          (d) => d.project_id || d.version_id,
        ),
      });
    } catch (e) {
      console.error(`  Error processing ${pkg.slug}:`, e.message);
    }
  }

  // Build the simplified flat structure
  const finalDB = {};

  // Combine cached and new
  for (const pkg of [...packagesUpToDate, ...newlyHashed]) {
    const { slug, ...details } = pkg;
    finalDB[slug] = details;
  }

  if (!fs.existsSync(path.dirname(DB_FILE))) {
    fs.mkdirSync(path.dirname(DB_FILE), { recursive: true });
  }

  fs.writeFileSync(DB_FILE, JSON.stringify(deepSort(finalDB), null, 2));
  console.log("Modrinth database updated successfully.");
}

updateModrinth().catch(console.error);
