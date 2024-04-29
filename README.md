# gbtetris [![CI Build](https://github.com/etdv-thevoid/gbtetris/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/etdv-thevoid/gbtetris/actions/workflows/build.yml)

A [pret]-style disassembly of the Gameboy Tetris.

This project is a work in progress. It is not yet complete, so it requires the following ROMs in the project directory to build:

| Filename       | Known ROM names                                         | CRC      | SHA |
|----------------|---------------------------------------------------------|----------|-----|
| `baserom.gb`   | Tetris (Japan) / Tetris (World) / Tetris (W) (v1.0) [!] | `63F9407D` | `3f2a6407c9900ad5817ee1cfb3609c5ee17400fc` |
| `baserom11.gb` | Tetris (World) (Rev A) / Tetris(W) (v1.1) [!]           | `46DF91AD` | `74591cc9501af93873f9a5d3eb12da12c0723bbc` |

After installing RGBDS, run `make` to generate `tetris.gb` (should be identical to `baserom.gb`).

Building `tetris11.gb` is currently a work in progress (it will build but is not yet identical to `baserom11.gb`).

[pret]: https://github.com/pret
