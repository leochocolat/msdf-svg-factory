# MSDF SVG Factory

## Description

- Collection of generated MSDF SVG images 
- Node script to easily generate your MSDF SVG images.

## Usage

To generate a new SVG just duplicated an existing SVG folder. Don't forget to add it to the config file index.js, then run :

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
