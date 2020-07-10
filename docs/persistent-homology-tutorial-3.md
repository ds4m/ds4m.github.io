
# Persistent Homology Tutorial 3 of 4

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 2](persistent-homology-tutorial-2.md), and
[Part 4](persistent-homology-tutorial-4.md).)

### Ripser on your machine

A more advanced (but very useful) step is to now download Ripser to your
machine and to run it locally. This allows you to perform larger computations.
Ripser is written in C++. You may download the code for Ripser
[here](https://github.com/Ripser/ripser), which also contains installation
instructions. Minimal installation instructions are listed below.

<div class="highlight"><pre><code class="hljs text">git clone https://github.com/Ripser/ripser.git
cd ripser
make all
./ripser examples/sphere_3_192.lower_distance_matrix</code></pre></div>

For convenience, you may want to download all the content of
[this folder](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-10-resources/)
and copy the executable file `ripser` into that folder, then `cd` into the
same folder.

You can use the flag `--format distances` to specify you are computing on a
distance matrix, or `--format point-cloud` to specify you are computing on a
point cloud. The flag `--dim k` specifies that homology is computed only up to
dimension $k$, and the flag `--threshold t` specifies that persistent homology
is computed only up to scale parameter $t$. For example, we can recreate all of
the examples from [Part 1](persistent-homology-tutorial-1.md) with the following
commands.

House example on the distance matrix:

<div class="highlight"><pre><code class="hljs text">./ripser --format distance distance_matrices/house_distances.txt</code></pre></div>

House example on the point cloud:

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud point_clouds/house_points.txt</code></pre></div>

Torus example, up to 2-dimensional homology:

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud --dim 2 point_clouds/torus_points.txt</code></pre></div>

Sphere example, up to scale parameter 1.2:

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud --dim 2 --threshold 1.2 point_clouds/sphere_points.txt</code></pre></div>

Cyclooctane example. Try increasing the distance threshold gradually and see
if your computer can do better than Ripser in your browser:

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud --dim 2 --threshold 1.3 point_clouds/cyclooctane_points.txt</code></pre></div>

Optical image patch example:

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud --dim 1 --threshold 1.3 point_clouds/optical_k300_points.txt</code></pre></div>

Instead of just printing Ripser's output to the terminal, you can also save it
to a text file. The below example also saves the output to the text file
`house_points_ripser_printed.txt`.

<div class="highlight"><pre><code class="hljs text">./ripser --format point-cloud point_clouds/house_points.txt | tee -a house_points_ripser_printed.txt</code></pre></div>


## Python

The remainder of this tutorial requires one to have Python and/or the Ripser
software package installed.

Installing and running new code can be frustrating, especially if it is in a
language (perhaps Python) that is unfamiliar to you. Nevertheless, we believe
that it is extremely important for all practitioners of machine learning to
have some exposure to Python. For this reason, the time you spend getting
Python running on your machine is time well spent, even though this can feel
like a frustrating investment of time.

If you don't yet have Python, and if you are a PC user, then we recommend
installing [Anaconda](https://www.anaconda.com/download). If you don't yet have
Python, and if you are a Mac user, then we recommend installing Python 2.7.15
from [here](https://www.python.org/downloads/release/python-2715/). We expect
the code to work with an existing version of Python that you may happen to have
already.


### Ripser with Python

Melissa McGuirl has written very nice code for using Ripser with Python, which
is what we will use in this section. In particular, the file
`house_points_ripser_printed.txt` that we saved in
[Part 1](persistent-homology-tutorial-1.md) is not in a format that is terribly
easy to work with. Melissa's code reformats Ripser output in a convenient
manner.

Alternatively, there is a Cython wrapper for Ripser available which might be
more efficient and better for non-Linux machines. The wrapper is available
[here](https://pypi.org/project/ripser/) or
[here](https://ripser.scikit-tda.org/).

Ensure you are in the folder of data files mentioned
[above](#ripser-on-your-machine) and copy the Ripser executable into that
folder as suggested earlier.  (Or, alternatively, make sure that Ripser is in
your Python path, and then in line 45 of `getBarCodes.py`, change `./ripser` to
`ripser`). In your terminal, try running the following command.

<div class="highlight"><pre><code class="hljs text">python getBarCodes.py -i distance_matrices/ -o ripser_outputs/</code></pre></div>

This will take every distance matrix in the folder `distance_matrices`,
compute the persistent homology barcodes for the Vietoris-Rips complex built on
top of this metric space, and print the output barcodes to the folder
`ripser_outputs`.

The following command then separates the Ripser output into barcode intervals
separated by dimension.

<div class="highlight"><pre><code class="hljs text">python separateRipser.py -i ripser_outputs/ -o barcodes/</code></pre></div>

And the following command then plots the corresponding persistence diagrams in
your current directory.

<div class="highlight"><pre><code class="hljs text">python plotpd.py -i barcodes/ -o ./</code></pre></div>

Melissa's code is written to work only with input metric space data in the form
of a distance matrix, but one could edit it to also work with input metric
space data in the form of a point cloud, for example.

---

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 2](persistent-homology-tutorial-2.md), and
[Part 4](persistent-homology-tutorial-4.md).)
