const fs = require("fs");
function json2typst(s) {
  return s
    .replaceAll("{", "(")
    .replaceAll("}", ")")
    .replaceAll("[", "(")
    .replaceAll("]", ")")
    .replaceAll(/\bnull\b/g, "none");
}

const filename = process.argv[2];
const json = fs.readFileSync(filename, "utf8");
const typ = json2typst(json);
console.log(typ);
