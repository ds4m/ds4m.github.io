
# Persistent Homology Tutorial 4 of 4

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 2](persistent-homology-tutorial-2.md), and
[Part 3](persistent-homology-tutorial-3.md).)

## Topological feature vectors - persistent homology and machine learning

There are by now a wide variety of ways to incorporate persistent homology
information into feature vectors for a machine learning task (Adcock et al
2016, Adams et al 2017, Atienza 2018, Bendich et al 2016, Bubenik 2015, Bubenik
& Dlotko 2016, Carriere et al 2015, Carriere & Bauer 2018, Carriere et al 2018,
Chazal & Divol 2018, Chen et al 2015, Chevyrev et al 2018, Chung et al 2009, Di
Fabio & Ferri 2015, Hofer et al 2017, Kalisnik 2018, Reininghaus et al 2015,
Skraba 2018, Topaz et al 2015, Zeppelzauer et al 2016). We tersely describe a
few of these approaches.

For Henry's "from persistent homology to machine learning" survey slides from
the ICERM TRIPODS bootcamp, please see
[here](http://www.math.colostate.edu/~adams/talks/PHtoML_Slides.pdf).

### Persistence landscpaes

One example is persistence landscapes (Bubenik 2015).  Bubenik & Dlotko (2017)
have [made their code
available](https://www.math.upenn.edu/~dlotko/persistenceLandscape.html), and
persistence landscapes are also [implementable in
R-TDA](https://rdrr.io/cran/TDA/man/landscape.html).

### Persistence images

A second example is persistence images (Adams et al 2017), with Python code
available from [Nathaniel Saul (Persims)](https://github.com/scikit-tda/persim)
or [Francis Motta](https://gitlab.com/csu-tda/PersistenceImages), and with
Matlab code available [here](https://github.com/CSU-TDA/PersistenceImages).

We'll attempt to describe how to compute persistence images using the Jupyter
notebooks accompanying [Nathaniel Saul's Persim
code](https://github.com/scikit-tda/persim).  First, download the Persim code.
Second, install [Jupyter](http://jupyter.org/install.html), perhaps using
Anaconda as described in that link. Open a new terminal (which is often
required after new installations) and in that terminal, try the following
command.

<div class="highlight"><pre><code class="hljs text">jupyter notebook</code></pre></div>

This should open a window in an internet browser. In this browser window,
change directories to `persim/notebooks`, and then open the Jupyter notebook
`Persistence Images.ipynb`. You should then be able to run the code in the
browser!

## Topological feature vectors - coding challenges

### 6 shape classes

Change directory to the folder
`topological-data-analysis/topological-feature-vectors/data-6-shape-classes`.
<font color='red'>NOTE: Folder missing--must fix!</font>
This subfolder contains persistence diagram data for 6 shape classes:

 1. A unit cube
 2. A circle of diameter one
 3. A sphere of diameter one
 4. Three clusters with centers randomly chosen in the unit cube
 5. Three clusters within three clusters
 6. A torus with a major diameter of one and a minor diameter of one half.

These shape classes are described in Section 6.1 of the paper [Persistence
Images: A Stable Vector Representation of Persistent
Homology](http://jmlr.org/papers/v18/16-337.html), and are shown below.

![Illustrations of the six shape classes listed above](images/6ShapeClasses.png)

We produced 25 point clouds of 500 randomly sampled points from each shape
class. We then added a level of Gaussian noise to each point, at a noise level
neta=0.1 or neta=0.05. We then have already computed the persistent homology
intervals in homological dimension i=0 and i=1. <font color='red'>Should "neta" here be "eta" (Greek letter)?  If so, we can then use MathJax on these equations.</font>

For example, the file `ToyData_PD_n05_23_6_0.txt` corresponds to noise level
neta=0.05, the 23rd point cloud randomly sampled from shape class 6., with
persistent homology computed in dimension 0. Each row of this file has two
entries: the birth and death time of a 0-dimensional persistent homology
interval.

By contrast, the file `ToyData_PD_n1_21_3_1.txt` corresponds to noise level
neta=1, the 21st point cloud randomly sampled from shape class 3., with
persistent homology computed in dimension 1. Each row of this file has two
entries: the birth and death time of a 1-dimensional persistent homology
interval.

Your task is to use machine learning to distinguish these six classes from each
other. In a K-medoids clustering test, some accuracies and computation times
are displayed for bottleneck distances, Wasserstein distances, persistence
landscapes, and persistence images in Table 1 of [Persistence Images: A Stable
Vector Representation of Persistent
Homology](http://jmlr.org/papers/v18/16-337.html).  Do you have ideas for
beating these accuracies or computation times?

![Table comparing classification accuracy and time for persistence diagrams, persistence landscapes, and persistence images](images/table1.png)

In the above table, PD means the persistence diagram equipped with either the
$L^1$ (1-Wasserstein), $L^2$ (2-Wasserstein), or sup (bottleneck) metrics. PL
means the persistence landscape, equipped with either the $L^1$, $L^2$, or sup
metric. PI means the persistence image, equipped with either the $L^1$, $L^2$,
or sup metric. But you should develop your own techniques for turning barcodes
into feature vectors, and see how they compare!

Some Matlab code for creating points from these shape classes is available
[here](https://github.com/CSU-TDA/PersistenceImages/tree/master/matlab_code/sixShapeClasses).


## Bibliography

A. Adcock, E. Carlsson, and G. Carlsson. The ring of algebraic functions on
persistence bar codes. _Homology, Homotopy and Applications_, 18:381-402, 2016

H. Adams, S. Chepushtanova, T. Emerson, E. Hanson, M. Kirby, F. Motta, R.
Neville, C. Peterson, P. Shipman, and L. Ziegelmeier. Persistence images: A
stable vector representation of persistent homology. _Journal of Machine
Learning Research_, 18:1-35, 2017.

P. Bendich, J.S. Marron, E. Miller, A. Pieloch, and S. Skwerer, Persistent
homology analysis of brain artery trees. _Ann. Appl. Stat._, 10:198-218, 2016.

M. A. Armstrong. _Basic Topology_. Springer, New York, Berlin, 1983.

N. Atienza, R. Gonzalez-Diaz, and M. Soriano-Trigueros. On the stability of
persistent entropy and new summary functions for topological data analysis.
arXiv:1803.08304, 2018.

U. Bauer. Ripser: A lean C++ code for the computation of Vietoris-Rips
persistence barcodes. Software available at https://github.com/Ripser/ripser,
2015.

M. W. Brown, S. Martin, S. N. Pollock, E. A. Coutsias, and J. P. Watson.
Algorithmic dimensionality reduction for molecular structure analysis. _Journal
of Chemical Physics_, 129:064118, 2008.

P. Bubenik. Statistical topological data analysis using persistence landscapes.
_Journal of Machine Learning Research_, 16:77-10, 2015.

P. Bubenik and P. Dlotko, A persistence lanscapes toolbox for topological
statistics. _Journal of Symbolic Computation_, 78:91-114, 2017.

G. Carlson, T. Ishkhanov, V. de Silva, and A. Zomorodian. On the local behavior
of spaces of natural images. _Int. J. Computer Vision_, 76:1-12, 2008.

M. Carriere, U. Bauer. On the metric distortion of embedding persistence
diagrams into reproducing kernel Hilbert spaces. arXiv:1806.06924, 2018

M. Carriere, M. Cuturi, and S. Oudot. Sliced Wasserstein kernel for persistence
diagrams. arXiv:1706.03358, 2017.

M. Carriere, S. Oudot, and M. Ovsjanikov. Stable topological signatures for
points on 3d shapes. In _Computer Graphics Forum_, 34:1-2, 2015.

Y.-C. Chen, D. Wong, A. Rinaldo, and L. Wasserman. Statistical analysis of
persistence intensity functions. arXiv:1510.02502, 2015.

L. Crawford, A. Monod, A. X. Chen, S. Mukherjee, and R. Rabadan. Functional
data analysis using a topological summary statistic: The smooth Euler
characteristic transform. arXiv: https://arxiv.org/abs/1611.06818, 2017.

F. Chazal, V. de Silva, and S. Oudot. Persistence stability for geometric
complexes. _Geometriae Dedicata_, pages 1-22, 2013.

F. Chazal and V. Divol. The density of expected persistence diagrams and its
kernel based estimation. arXiv:1802.10457, 2018.

I. Chevyrev, V. Nanda, H. Oberhauser. Persistence paths and signature features
in topological data analysis. arXiv:1806.00381, 2018.

M.K. Chung, P. Bubenik, and P.T. Kim. Persistence diagrams of cortical surface
data. In _Information Processing in Medical Imaging_, 386-297, Springer, 2009.

B. Di Fabio and M. Ferri. Comparing persistence diagrams through complex
vectors. In _International Conference on Image Analysis and Processing_, LNCS
9279, pages 294-305, 2015.

H. Edelsbrunner and J. Harer. _Computational Topology: An Introduction_.
American Mathematical Society, Providence, 2010.

H. Edelsbrunner, D. Letscher, and A. Zomorodian. Topological persistence and
simplification. _Discrete Comput. Geom._, 28:511-533, 2002.

A. Hatcher. _Algebraic Topology_. Cambridge University Press, Cambridge, 2002.

C. Hofer, R. Kwit, M. Niethammer, and A. Uhl. Deep learning with topological
signatures. In _Advances in Neural Information Processing Systems_, pages
1634-1644, 2017.

S. Kalisnik. Tropical coordinates on the space of persistence barcodes. In
_Foundations of Computational Mathematics_, pages 1-29, 2018.

A. B. Lee, K. S. Pedersen, and D. Mumford. The nonlinear statistics of
high-contrast patches in natural images. _Int. J. Comput. Vision_, 54:83-103,
2003.

S. Martin and J. P. Watson. Non-manifold surface reconstruction from
high-dimensional point cloud data. _Computational Geometry_, 44:427-441, 2011.

S. Martin, A. Thompson, E. A. Coutsias, and J. P. Watson. Topology of
cyclo-octane energy landscape. _Journal of Chemical Physics_, 132: 234115,
2010.

J. Reininghaus, S. Huber, U. Bauer, and R. Kwitt. A stable multi-scale kernel
for topological machine learning. In _Proceedings of the IEEE Conference on
Computer Vision and Pattern Recognition_, pages 4741-4748, 2015.

P. Skraba. Persistent homology and machine learning. _Informatica_, 24(2),
2018.

C. Topaz, L. Ziegelmeier, and T. Halverson. Topological data analysis of
biological aggregation models. PloS One, 10(5):e0126383, 2015.

M. Zeppelzauer, B. Zielinski, M. Juda, and M. Seidl. Topological descriptors
for 3d surface analysis. In _Computational Topology in Image Context: 6th
International Workshop Proceedings_, pages 77-87, 2016.

J. H. van Hateren and A. van der Schaaf. Independent component filters of
natural images compared with simple cells in primary visual cortex. _Proc. R.
Soc. Lond. B_, 265:359-366, 1998.

A. Zomorodian. _Advances in Applied and Computational Topology_. American
Mathematical Society, 2012.

A. Zomorodian and G. Carlsson. Computing persistent homology. _Discrete Comput.
Geom_., 33:249-274, 2005.

---

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 2](persistent-homology-tutorial-2.md), and
[Part 3](persistent-homology-tutorial-3.md).)
