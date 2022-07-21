const fs = require('fs');
const yargs = require('yargs');
const readline = require('readline');
const { parse } = require('svg-parser');
const { exec } = require('child_process');

const svgs = require('./svgs/index.js');

const { name } = yargs
    .usage('Usage: --name <name>')
    .option('n', { alias: 'name', describe: 'SVG name', type: 'string', demandOption: false })
    .argv;

const interface = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
});

if (!name) {
    interface.question('SVG name : ', start);
} else {
    start(name);
}

function start(name) {
    interface.close();

    console.log(`\nGenerating SVG ${name}...`);

    const { input, outputPath } = svgs[name];
    
    const svg = fs.readFileSync(input, 'utf8');
    
    const parsedSvg = parse(svg);

    const rootElement = parsedSvg.children[0];
    const { properties } = rootElement;
    const [left, top, right, bottom] = properties.viewBox.split(' ');
    const width = Math.round(parseFloat(right) - parseFloat(left));
    const height = Math.round(parseFloat(bottom) - parseFloat(top));

    const command = `./msdfgen/out/msdfgen msdf -svg ${input} -size ${width} ${height} -o ${outputPath}/${name}.png`;

    try {
        exec(command, (error) => {
            if (error) throw error;
            console.error('\nSuccess!\n');
        });
    } catch(err) {
        console.error('\nFailed...\n');
        console.error(err);
    }
}