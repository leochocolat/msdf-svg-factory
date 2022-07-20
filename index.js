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
    
    const svg = fs.readFileSync(svgs[name].path, 'utf8');
    
    const parsedSvg = parse(svg);

    const rootElement = parsedSvg.children[0];
    const { properties } = rootElement;
    const [left, top, right, bottom] = properties.viewBox.split(' ');
    const width = parseFloat(right) - parseFloat(left);
    const height = parseFloat(bottom) - parseFloat(top);

    const command = `./msdfgen/msdfgen msdf -svg ${svgs[name].path} -size ${width} ${height}`;

    console.log(command);

    exec(command, (error, response) => {
        if (error) {
            console.error('Failed...');
            console.error(error);
            return;
        }

        console.error('Success...');
    });

    // try {
        
    // } catch (err) {
    //     console.error(err);
    // }
}


