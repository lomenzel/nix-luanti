const fs = require("node:fs");
const path = require("path");
const { exec } = require("child_process");

const BASE_URL = "https://content.luanti.org/api/packages";
const DB_FILE = path.join("generated", "./contentDB.json");
const FETCH_LIMIT = 500;

async function fetchJSON(url) {
  return await (await fetch(url)).json()
}

function getHash(url) {
  return new Promise((resolve, reject) => {
    console.log(`Fetching hash for ${url}`);
    exec(`nix-prefetch-url ${url}`, (error, stdout) => {
      if (error) return reject(error);
      const hash = stdout.trim().split("\n").pop();
      resolve(hash);
    });
  });
}

async function updateAllPackages() {
  const localPackages = fs.existsSync(DB_FILE)
    ? JSON.parse(fs.readFileSync(DB_FILE, "utf-8"))
    : [];
  const localPackageMap = new Map(
    localPackages.map((pkg) => [`${pkg.name}, ${pkg.author}, ${pkg.release}`, pkg])
  );

  const remotePackages = (await fetchJSON(BASE_URL))
    .filter((pkg) => pkg.release !== null)
    .map(
      (pkg) =>
        localPackageMap.get(`${pkg.name}, ${pkg.author}, ${pkg.release}`) ?? pkg
    );

  console.log(
    `Found ${remotePackages.length} remote packages, ${localPackages.length} local packages.`
  );

  const packagesWithHash = remotePackages.filter((pkg) => pkg.hash);
  const packagesToUpdate = remotePackages
    .filter((pkg) => !pkg.hash)
    .slice(0, FETCH_LIMIT);

  const newlyHashedPackages = [];
  for (const pkg of packagesToUpdate) {
    const [details, dependencies, hash] = await Promise.all([
      await fetchJSON(`${BASE_URL}/${pkg.author}/${pkg.name}`),
      await fetchJSON(`${BASE_URL}/${pkg.author}/${pkg.name}/dependencies?only_hard=1`),
      await getHash(`${BASE_URL.replace("api/", "")}/${pkg.author}/${pkg.name
        }/releases/${pkg.release}/download`.replace(/ /g, "%20"))
    ])

    details.dependencies = dependencies

    newlyHashedPackages.push({
      author: details.author,
      game_support: details.type === "mod"
        ? details.game_support
          .filter((game) => game.supports)
          .map((game) => ({ name: game.game.name, author: game.game.author }))
        : undefined,
      name: details.name,
      provides: details.provides,
      release: details.release,
      repo: details.repo,
      short_description: details.short_description,
      type: details.type,
      dependencies: details.type === "mod"
        ? details.dependencies[`${details.author}/${details.name}`]?.map(
          (dep) => dep.name
        ) ?? []
        : undefined,
      hash: hash,
    });

  }

  // Combine the already processed packages with the newly hashed ones and sort.
  const allPackages = [...packagesWithHash, ...newlyHashedPackages].sort((a, b) => {
    if (a.name < b.name) return -1;
    if (a.name > b.name) return 1;
    if (a.author < b.author) return -1;
    if (a.author > b.author) return 1;
    return 0;
  });

  if (!fs.existsSync(path.dirname(DB_FILE))) {
    fs.mkdirSync(path.dirname(DB_FILE), { recursive: true });
  }
  fs.writeFileSync(DB_FILE, JSON.stringify(allPackages)); // Added formatting for readability
  console.log("Package database updated successfully.");
}
updateAllPackages().catch(e => {
  console.error("Error updating packages:", e);
})