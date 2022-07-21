const path = require('path');

module.exports = {
    input: '2219.svg',
    inputPath: path.join(__dirname, './input'),
    outputPath: path.join(__dirname, './output'),
    options: {
        maxWidth: 128
    }
}