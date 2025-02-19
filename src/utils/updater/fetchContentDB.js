const baseurl = "https://content.luanti.org/api/packages";
const fs = require("node:fs");
const path = require("path")

const dbDir = "./contentDB"
let fetched = 0;

const { exec } = require("child_process")

function getHash(url) {
    return new Promise((resolve, reject) => {
        exec(`nix-prefetch-url ${url}`, (error, stdout) => {
            if (error) {
                return reject(error);
            }
            const lines = stdout.trim().split('\n');
            const hashLine = lines[lines.length - 1];
            fetched++;
            resolve(hashLine);
        });
    });
}

function setDetails(id, details) {
    filePath = `${dbDir}/${id}.json`.replace(/\/\./g, "_")
    dirPath = path.dirname(filePath)
    if (!fs.existsSync(dirPath)) {
        fs.mkdirSync(dirPath, { recursive: true });
    }
    fs.writeFileSync(filePath, JSON.stringify(details));
    return details
}
async function getDetails(id) {
    const filePath = `${dbDir}/${id}.json`.replace(/\.{2,}/g, "_");

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

async function packagelist() {
    // Fetch the list of packages
    let response = await fetch(baseurl);
    let list = await response.json(); // Parse the JSON response
    let packages = {
        game: [],
        mod: [],
        txp: []
    }
    console.log(`${list.length} Packages found`)

    for (let i = 0; i < list.length; i++) {
        console.log(`processing: ${i + 1}/${list.length}`)
        if (fetched > 100) return;
        let package = list[i]
        package.details = await getDetails(`${package.author}/${package.name}/${package.release}`)
        package.WithSameName = list.reduce((acc, curr) => { return [...acc, ...((curr.name === package.name && curr.author !== package.author && curr.type === package.type) ? [`"${curr.author}/${curr.name}"`] : [])] }, [])
        packages[package.type].push(package)
    }
}

async function main() {
    await packagelist();
}

main()
