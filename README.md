# RX Marble Generator

This repository packages https://bitbucket.org/achary/rx-marbles/ into a Docker container and generate RX Marble pictures.

## Features

* Generate RX MArble diagram based on `txt` file using this [syntax](https://bitbucket.org/achary/rx-marbles/src/0f5d57bb309491a979f10d07d4aa7ecff3e4084e/docs/syntax.md)
* Convert the generated SVG to PNG

## Usage

### Building

Run the following command after having cloned this repository:

```bash
docker build -t heckj/rxmarbles .
```

or just use:

```bash
docker pull heckj/rxmarbles
```

### debugging

```bash
docker run -it --entrypoint=/bin/sh heckj/rxmarbles
```

### Running

```bash
docker run -i -v $PWD:/data heckj/rxmarbles
```

It searches for all `.txt` files located into the (container) `data` directory and parse them. For each diagram a `.svg` file and `.png` file are created.

