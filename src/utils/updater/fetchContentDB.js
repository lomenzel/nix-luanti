const fs = require("node:fs");
const path = require("path");
const { exec } = require("child_process");

const BASE_URL = "https://content.luanti.org/api/packages";
const DB_FILE = path.join("generated", "./contentDB.json");
const FETCH_LIMIT = 1;

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

  const remotePackages = (await fetchJSON(BASE_URL))
    .filter((pkg) => pkg.release !== null)
    .map((pkg) => {
      return {
        ...(localPackages[
          pkg.type === "game" ? "games" : pkg.type === "mod" ? "mods" : "texturePacks"
        ]?.[pkg.author]?.[pkg.name] ?? pkg), ...pkg
      }
    })
    .sort(() => Math.random() - 0.5); // logs are more fun with random order

  console.log(
    `Found ${remotePackages.length} remote packages`
  );

  const packagesWithHash = remotePackages.filter((pkg) => pkg.hash);
  const packagesToUpdate = remotePackages
    .filter((pkg) => !pkg.hash)
    .slice(0, FETCH_LIMIT);

  console.log(`${packagesWithHash.length} packages up to date, ${packagesToUpdate.length} will be updated`);

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
      ...details,
      game_support: details.type === "mod"
        ? details.game_support
          .filter((game) => game.supports)
          .map((game) => ({ name: game.game.name, author: game.game.author }))
        : undefined,
      dependencies: details.type === "mod"
        ? details.dependencies[`${details.author}/${details.name}`]?.map(
          (dep) => dep.name
        ) ?? []
        : undefined,

      hash: hash,
    });

  }

  const allPackages = [...packagesWithHash, ...newlyHashedPackages].map(pkg => ({
    author: pkg.author,
    game_support: pkg.game_support.length == 0 ? undefined : pkg.game_support,
    name: pkg.name,
    provides: pkg.provides.length == 0 ? undefined : pkg.provides,
    release: pkg.release,
    repo: pkg.repo,
    short_description: pkg.short_description,
    type: pkg.type,
    dependencies: pkg.dependencies.length == 0 ? undefined : pkg.dependencies,
    hash: pkg.hash,
  }));


  structuredPackages = {
    games: {},
    mods: {},
    texturePacks: {},
  }

  for (const pkg of allPackages) {
    if (pkg.type === "game") {
      structuredPackages.games[pkg.author] ??= {};
      structuredPackages.games[pkg.author][pkg.name] = { ...pkg, author: undefined, type: undefined, name: undefined };
    } else if (pkg.type === "mod") {
      structuredPackages.mods[pkg.author] ??= {};
      structuredPackages.mods[pkg.author][pkg.name] = { ...pkg, author: undefined, type: undefined, name: undefined };
    } else if (pkg.type === "txp") {
      structuredPackages.texturePacks[pkg.author] ??= {};
      structuredPackages.texturePacks[pkg.author][pkg.name] = { ...pkg, author: undefined, type: undefined, name: undefined };
    } else {
      console.error(`Unknown package type: ${pkg.type} for ${pkg.author}/${pkg.name}`);
    }
  }

  if (!fs.existsSync(path.dirname(DB_FILE))) {
    fs.mkdirSync(path.dirname(DB_FILE), { recursive: true });
  }
  fs.writeFileSync(DB_FILE, JSON.stringify(structuredPackages));
  console.log("Package database updated successfully.");
}
updateAllPackages().catch(e => {
  console.error("Error updating packages:", e);
})