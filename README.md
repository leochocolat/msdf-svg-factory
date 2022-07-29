# MSDF SVG Factory

## Description

- Collection of generated MSDF SVG images 
- Node script to easily generate your MSDF SVG images using [msdfgen](https://github.com/Chlumsky/msdfgen)

## Installation

You first need to build msdfgen

```bash
cd msdfgen
```

```bash
mkdir out
```

```bash
cd out && cmake .. && make
```

Then go back to the root

```bash
cd ../../
```

Install node modules

```bash
npm install
```

## Usage

To generate a new SVG just duplicate an existing SVG folder, rename it with the name you want, add the .svg file, check the config file and then run :

```bash
node index.js
```

or using npm script

```bash
npm start
```

You'll be asked for a svg name, use the name of folder you just created.

You can also directly pass the font name as an argument like this :

```bash
node index.js --name your-svg-name
```

or using npm script

```bash
npm start -- --name your-svg-name
```

## Note

MSDF SVG are typically used to render SVG in WebGL.
