# DeepSpaceProcessingReferences

## Preconditions

Tested with Processing 4.4.10.

It is required to install the TUIO processing library: https://github.com/mkalten/TUIO11_Processing

In order to test the Pharus tracking, you need to have a Pharus simulator or a TUIO simulator. A later one can be obtained e.g. here: https://github.com/gregharding/TUIOSimulator

For more references on TUIO: https://tuio.org/?software

## General

The repo contains simple Processing reference projects for the [Deep Space](https://ars.electronica.art/center/en/deepspace/) environment. The reference sketches are intended to be used on the "second signal" path of Deep Space, which runs only at half resolution but therefore from one workstation only. This workstations has two UHD screens, on for the wall projectors and one for the floor projectors (1x2 setup, wall top and floor bottom). Processing needs to create a fullscreen window overlapping both screens. The samples furthermore work with the [Pharus](https://ars.electronica.art/futurelab/en/pharus/) tracking system in the space.

There are basically two sample implementations which are doing more or less the same.

Each sample has two important global variables which control how to run it:

`boolean bFullscreen = true; // fullscreen or window mode` \
`int scaleFactor = 4; // only for window mode: fraction of scale of displayed windows content relative to Deep Space resolution (which is 3840x2160 for wall and floor each).`

## SimpleDeepSpaceSample

The simple version contains only one relevant file you need to work with and is pure functional code. Except from the windows setup, data from the pharus client is been read and displayed on the floor projection.

## EnhancedDeepSpaceSample

This little bit more enhanced version is object oriented and uses a bit more files to split up the code in functional blocks. It also opens a window and reads out the data from Pharus. But there is also a player object which represents each tracked person in the space. This player has also a very rudimentary approach to track jumps in the space.

## Testing with Pharus

Use this [Pharus Simulator](https://github.com/ArsElectronicaFuturelab/UE-DeepSpace-PharusLasertracking/tree/main/PharusSimulators/PharusRecSimulator) to test your Pharus integration locally with some prerecorded tracks.

