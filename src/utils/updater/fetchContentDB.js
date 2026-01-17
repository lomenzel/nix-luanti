const fs = require("node:fs");
const path = require("path");
const { exec } = require("child_process");

const BASE_URL = "https://content.luanti.org/api/packages";
const DB_FILE = path.join("generated", "./contentDB.json");

const TIME_LIMIT_MINUTES = 45;
const START_TIME = Date.now();
const TIME_LIMIT_MS = TIME_LIMIT_MINUTES * 60 * 1000;

async function fetchJSON(url) {
  const res = await fetch(url);
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
    console.log(`[CONTENT_DB]  Fetching hash for ${url}`);
    exec(
      `nix-prefetch-url "${url}?reason=nix-luanti-updatePackageSet"`,
      (error, stdout) => {
        if (error) return reject(error);
        const hash = stdout.trim().split("\n").pop();
        resolve(hash);
      },
    );
  });
}

async function updateAllPackages() {
  const localDB = fs.existsSync(DB_FILE)
    ? JSON.parse(fs.readFileSync(DB_FILE, "utf-8"))
    : { games: {}, mods: {}, texturePacks: {} };

  // Helper to find local entry
  const getLocal = (pkg) => {
    const category =
      pkg.type === "game"
        ? "games"
        : pkg.type === "mod"
          ? "mods"
          : "texturePacks";
    return localDB[category]?.[pkg.author]?.[pkg.name] || null;
  };

  const remotePackageList = (await fetchJSON(BASE_URL)).filter(
    (pkg) => pkg.release !== null,
  );
  console.log(
    `[CONTENT_DB] Found ${remotePackageList.length} total packages on ContentDB.`,
  );

  const packagesToUpdate = [];
  const packagesUpToDate = [];

  for (const pkg of remotePackageList) {
    const local = getLocal(pkg);
    // If we have it and the release hasn't changed, it's up to date
    if (local && local.release === pkg.release && local.hash) {
      packagesUpToDate.push({ ...pkg, ...local });
    } else {
      packagesToUpdate.push(pkg);
    }
  }

  console.log(
    `[CONTENT_DB] ${packagesUpToDate.length} packages already hashed.`,
  );
  console.log(
    `[CONTENT_DB] ${packagesToUpdate.length} packages need fetching/updating.`,
  );

  // Shuffle for variety in logs across different runs
  const queue = packagesToUpdate.sort(() => Math.random() - 0.5);
  const newlyHashedPackages = [];

  for (const pkg of queue) {
    // Check Time Limit
    if (Date.now() - START_TIME > TIME_LIMIT_MS) {
      console.warn(
        `[CONTENT_DB] !!! TIME LIMIT REACHED (${TIME_LIMIT_MINUTES}m). Saving progress and exiting.`,
      );
      break;
    }

    try {
      console.log(`[CONTENT_DB] Processing ${pkg.author}/${pkg.name}...`);

      const [details, dependencies] = await Promise.all([
        fetchJSON(`${BASE_URL}/${pkg.author}/${pkg.name}`),
        fetchJSON(
          `${BASE_URL}/${pkg.author}/${pkg.name}/dependencies?only_hard=1`,
        ),
      ]);

      const downloadUrl =
        `${BASE_URL.replace("api/", "")}/${pkg.author}/${pkg.name}/releases/${pkg.release}/download`.replace(
          / /g,
          "%20",
        );
      const hash = await getHash(downloadUrl);

      newlyHashedPackages.push({
        author: pkg.author,
        name: pkg.name,
        type: pkg.type,
        release: pkg.release,
        short_description: pkg.short_description,
        repo: details.repo,
        hash: hash,
        game_support:
          details.type === "mod"
            ? details.game_support
                ?.filter((game) => game.supports)
                .map((game) => ({
                  name: game.game.name,
                  author: game.game.author,
                }))
            : undefined,
        provides: details.provides,
        dependencies:
          details.type === "mod"
            ? dependencies[`${pkg.author}/${pkg.name}`]?.map(
                (dep) => dep.name,
              ) || []
            : undefined,
      });
    } catch (e) {
      console.error(
        `[CONTENT_DB]  Failed ${pkg.author}/${pkg.name}:`,
        e.message,
      );
    }
  }

  // Restructure for the final JSON
  const structuredPackages = {
    games: {},
    mods: {},
    texturePacks: {},
  };

  const allReady = [...packagesUpToDate, ...newlyHashedPackages];

  for (const pkg of allReady) {
    let category = "mods";
    if (pkg.type === "game") category = "games";
    if (pkg.type === "txp" || pkg.type === "texturePacks")
      category = "texturePacks";

    structuredPackages[category][pkg.author] ??= {};
    structuredPackages[category][pkg.author][pkg.name] = {
      ...pkg,
      // Clear fields that are now part of the object path to save space
      author: undefined,
      type: undefined,
      name: undefined,
      // Clean up empty arrays
      dependencies:
        pkg.dependencies?.length === 0 ? undefined : pkg.dependencies,
      game_support:
        pkg.game_support?.length === 0 ? undefined : pkg.game_support,
      provides: pkg.provides?.length === 0 ? undefined : pkg.provides,
    };
  }

  if (!fs.existsSync(path.dirname(DB_FILE))) {
    fs.mkdirSync(path.dirname(DB_FILE), { recursive: true });
  }

  fs.writeFileSync(
    DB_FILE,
    JSON.stringify(deepSort(structuredPackages), null, 2),
  );
  console.log(
    `[CONTENT_DB] Update complete. Processed ${newlyHashedPackages.length} new packages.`,
  );
}

updateAllPackages().catch((e) => {
  console.error("[CONTENT_DB] Fatal Error updating packages:", e);
});
