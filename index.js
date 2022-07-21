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

    console.log(`\n⏳ Generating SVG ${name}...`);

    const { input, inputPath, outputPath, options } = svgs[name];
    
    const svg = fs.readFileSync(`${inputPath}/${input}`, 'utf8');
    
    const parsedSvg = parse(svg);

    const mergedSvg = mergeSvg(parsedSvg);

    const rootElement = parsedSvg.children[0];
    const { properties } = rootElement;
    const [left, top, right, bottom] = properties.viewBox.split(' ');
    const viewBoxWidth = parseFloat(right) - parseFloat(left);
    const viewBowHeight = parseFloat(bottom) - parseFloat(top);
    const viewBoxAspectRatio = viewBowHeight / viewBoxWidth;
    const outputWidth = Math.round(Math.min(options.maxWidth, viewBoxWidth));
    const outputHeight = Math.round(outputWidth * viewBoxAspectRatio);
    
    try {
        fs.writeFile(`${inputPath}/${name}-merged.svg`, mergedSvg, (err) => {
            if (err) throw err;

            const command = `./msdfgen/out/msdfgen msdf -svg ${inputPath}/${name}-merged.svg -size ${outputWidth} ${outputHeight} -o ${outputPath}/${name}.png -printmetrics -autoframe`;
            
            exec(command, (error, response) => {
                if (error) throw error;
                console.error('\n✅ Success!');
                
                console.error('\n📐 Layout infos :\n');
                console.log(response);
            });


            return 1;
        });
    } catch(err) {
        console.error('\n❌ Failed...\n');
        console.error(err);
    }
}

function mergeSvg(svg) {
    const paths = [];

    function traverse(element, cb) {
        cb(element);
        const childrens = element.children;
        if (childrens.length > 0) {
            for (let i = 0; i < childrens.length; i++) {
                const children = childrens[i];
                traverse(children, cb);
            }
        }
    }

    traverse(svg, (child) => {
        if (child.tagName === 'path') paths.push(child);
    });

    const d = paths.map(item => item.properties.d).join(' ');
    const singlePath = `<path d="${d}" />`;

    let rootPropertiesToString = [];
    for (const key in svg.children[0].properties) {
        rootPropertiesToString.push(`${key}="${svg.children[0].properties[key]}"`);
    }
    rootPropertiesToString = rootPropertiesToString.join(' ');

    const mergedSvg = `<svg ${rootPropertiesToString} >${singlePath}</svg>`;

    return mergedSvg;
}