# Tower of Hanoi (POV-Ray)

A 3D animated render of the Tower of Hanoi puzzle, built with [POV-Ray](https://www.povray.org/).

The scene procedurally builds the optimal recursive solution for `NumStones` disks,
then animates each move as a stone lifting off its peg, arcing over to the
destination peg, and dropping onto the stack — with the camera slowly orbiting
the scene throughout.

[![Watch the animation on YouTube](https://img.youtube.com/vi/JSnKv-jSox8/maxresdefault.jpg)](https://youtu.be/JSnKv-jSox8)

## Files

- `hanoi.pov` — scene and animation logic (disk generation, move solver, camera, lighting)
- `hanoi.ini` — render settings (resolution, frame range, quality, antialiasing)
- `Makefile` — build targets

## Usage

Render the animation frames:

```sh
make
```

This runs `povray hanoi.ini`, producing a sequence of PNG frames (`hanoi_*.png`).

Remove rendered output:

```sh
make clean
```

### Options

The number of disks is controlled by `NumStones` (default `5`) in `hanoi.pov`.
The required frame count for a full solve is `(2^NumStones - 1) * FramesPerMove`;
adjust `final_frame` in `hanoi.ini` accordingly if you change `NumStones`.

## License

CC0 1.0 Universal — see [LICENSE](LICENSE).
