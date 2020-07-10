
# Chapter 10: Topological Data Analysis

Authors: [Henry Adams](https://www.math.colostate.edu/~adams/),
[Johnathan Bush](https://www.math.colostate.edu/~bush/index.html), and
[Joshua Mirth](https://www.math.colostate.edu/~mirth/)

> *Digital resources supplementing the chapter*

---

## Persistent homology tutorial (4 parts)

 1. [Computing persistent homology online](persistent-homology-tutorial-1.md)
 2. [Exercises](persistent-homology-tutorial-2.md)
 3. [Computing persistent homology on your machine](persistent-homology-tutorial-3.md)
 4. [Topological feature vectors (and bibliography)](persistent-homology-tutorial-4.md)

## Persistent homology code

This repository contains scripts for using
[Ripser](https://github.com/Ripser/ripser) and
[Hera](https://bitbucket.org/grey_narn/hera) with a Python interface.
Code was written by [Melissa McGuirl](mailto:melissa_mcguirl@brown.edu).

You can run the scripts using Python on the command line, or inspect the code
within the scripts to see how they are implemented.

 1. To run Ripser on a collection of distance matrices, run the script
    [getBarCodes.py](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-10-resources/getBarCodes.py).
 2. To separate Ripser output by dimension
    to input that is compatible with Hera, run the script
    [separateRipser.py](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-10-resources/separateRipser.py).
    IMPORTANT: That script assumes there are just dimension 0 and dimension 1
    barcodes, but it could be adapted easily.
 3. To plot persistence diagrams, run the script
    [plotpd.py](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-10-resources/plotpd.py).
    (This script requires the output of `separateRipser.py`,
    not the output of `getBarCodes.py`.)
 4. To compute distances between two barcodes, run the script
    [computePDDists.py](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-10-resources/computePDDists.py).

For help on using any of these scripts, run it with a `--h` switch, as in
`python getBarCodes.py --h`.

NOTE: The plan of the chapter authors is to update this code to instead use
[scikit-tda](https://scikit-tda.org/).

---
