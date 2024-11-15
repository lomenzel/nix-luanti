const baseurl = "https://content.luanti.org/api/packages";
const fs = require("node:fs");
const path = require("path")

const { exec } = require("child_process")

function getHash(url) {
    return new Promise((resolve, reject) => {
        exec(`nix-prefetch-url ${url}`, (error, stdout) => {
            if (error) {
                return reject(error);
            }
            const lines = stdout.trim().split('\n');
            const hashLine = lines[lines.length - 1];
            resolve(hashLine);
        });
    });
}

function setDetails(id, details) {
    filePath = `./db/${id}.json`.replace(/\/\./g, "_")
    dirPath = path.dirname(filePath)
    if (!fs.existsSync(dirPath)) {
        fs.mkdirSync(dirPath, { recursive: true });
    }
    fs.writeFileSync(filePath, JSON.stringify(details));
    return details
}
async function getDetails(id) {
    const filePath = `./db/${id}.json`.replace(/\.{2,}/g, "_");

    if (fs.existsSync(filePath))
        return JSON.parse(fs.readFileSync(filePath, 'utf8'))
    return await fetchDetails(id)
}

async function fetchDetails(id) {
    console.log("fetching: ", id)
    const [author, name, release] = id.split("/")

    let details = await (await fetch(`${baseurl}/${author}/${name}`)).json()
    details.dependencies = await (await fetch(`${baseurl}/${author}/${name}/dependencies?only_hard=1`)).json()
    details.url = `${baseurl.replace("api/", "")}/${author}/${name}/releases/${release}/download/`.replace(/ /g, "%20")
    details.hash = await getHash(details.url)


    return setDetails(id, details)
}

function packageToString(package) {
    return `"${package.author}/${package.name}" = mkLuanti${package.type.charAt(0).toUpperCase() + package.type.slice(1)} {
            name = "${package.name}";
            release = ${package.release};
            hash = "${package.details.hash}";
            author = "${package.author}";
            provides = ${JSON.stringify(package.details.provides).replace(/,/g, " ")};
            depends = [${package.details.dependencies[`${package.author}/${package.name}`].map(dependency => {
        return `({
                    name = "${dependency.name}";
                    packages = ${JSON.stringify(dependency.packages).replace(/,/g, " ")};
                })`
    }).reduce((acc, curr) => { return acc + " " + curr }, "")}];
            with_same_name = [${package.WithSameName.reduce((acc, curr) => { return acc + " " + curr }, "")}];
        };`
}

async function packagelist() {
    // Fetch the list of packages
    let response = await fetch(baseurl);
    let list = await response.json(); // Parse the JSON response
    let packages = {
        game: [],
        mod: [],
        txp: []
    }
    console.log( `${list.length} Packages found`)

    for (let i = 0; i < list.length; i++) {
        //console.log(`processing: ${i + 1}/${list.length}`)
        let package = list[i]
        package.details = await getDetails(`${package.author}/${package.name}/${package.release}`)
        package.WithSameName = list.reduce((acc, curr) => { return [...acc, ...((curr.name === package.name && curr.author !== package.author && curr.type === package.type) ? [`"${curr.author}/${curr.name}"`] : [])] }, [])
        packages[package.type].push(package)
    }
    // console.log(packages)
    return packages;
}

const headers = {
    game: "{ mkLuantiGame}: {",
    mod: "{ mkLuantiMod}: {",
    txp: "{ mkLuantiTxp}: {"
}

function fileContents(packages) {
    return {
        games: packages.game.reduce((acc, curr) => { return acc + packageToString(curr) }, headers.game) + "}",
        mods: packages.mod.reduce((acc, curr) => { return acc + packageToString(curr) }, headers.mod) + "}",
        texturePacks: packages.txp.reduce((acc, curr) => { return acc + packageToString(curr) }, headers.txp) + "}",
    }
}

async function main() {
    let files = fileContents(await packagelist());
    fs.writeFileSync('./src/generated/games.nix', files.games)
    fs.writeFileSync('./src/generated/mods.nix', files.mods)
    fs.writeFileSync('./src/generated/texturePacks.nix', files.texturePacks)
}

main()
