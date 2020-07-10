
# Persistent Homology Tutorial 2 of 4

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 3](persistent-homology-tutorial-3.md), and
[Part 4](persistent-homology-tutorial-4.md).)

### Exercises on persistent homology

**Exercise**: Write a script (say in Python, or some other language) that
selects 400 points uniformly at random (or approximately uniformly at random)
from the annulus
$$ \left\\{ (x,y)\mid 0.95^2\leq x^2+y^2\leq1.05^2 \right\\} $$
in $\mathbb{R}^2$. Compute its persistent homology barcodes using Ripser.

**Exercise**: Write a script (say in Python, or some other language) that
selects 400 points uniformly at random (or approximately uniformly at random)
from the "coconut shell"
$$ \left\\{ (x,y,z) \mid 0.95^2\leq x^2+y^2+z^2\leq 1.05^2 \right\\} $$
in $\mathbb{R}^3$. Compute its persistent homology barcodes using Ripser.

**Exercise**: Write a Python script (or code in some other language) that will
select $n$ evenly-spaced points from the unit circle in the plane. Compute the
persistent homology of the Vietoris-Rips complex of 4, 6, 9, 12, 15, and 20
equally spaced points on the circle.
Do you get ever homology above dimension 1?

**Exercise**: Find a planar dataset $Z$ in $\mathbb{R}^2$ and a filtration
value $t$ such that $VR(Z,t)$ has nonzero Betti number $b_2$. Do a computation
in Ripser to confirm your answer.

**Exercise**: Find a planar dataset $Z$ in $\mathbb{R}^2$ and a filtration
value $t$ such that $VR(Z,t)$ has nonzero Betti number $b_6$. Do a computation
in Ripser to confirm your answer.

**Exercise**: Let $X$ be the 8 vertices of the cube in $\mathbb{R}^3$,
$X=\{(\pm 1,\pm 1,\pm 1)\}$.  Equip $X$ with the Euclidean metric.
Compute the persistent homology of the Vietoris-Rips complex of $X$.
Do you get ever homology above dimension 2?

**Exercise**: One way to produce a torus is to take a square $[0, 1] \times [0,
1]$ and then identify opposite sides. This is called a flat torus. More
explicitly, the flat torus is the quotient space $([0, 1] \times [0, 1]) /
\sim$, where $(0, y) \sim (1, y)$ for all $y$ in $[0, 1]$ and where $(x, 0)
\sim (x, 1)$ for all $x$ in $[0, 1]$.  The Euclidean metric on $[0, 1] \times
[0, 1]$ induces a metric on the flat torus.  For example, in the induced metric
on the flat torus, the distance between $(0, 1/2)$ and $(1, 1/2)$ is zero,
since these two points are identified. The distance between $(1/10, 1/2)$ and
$(9/10, 1/2)$ is $2/10$, by passing through the point $(0, 1/2) \sim (1, 1/2)$.

Write a Python script (or code in another language) that selects 400 random
points from the square $[0, 1] \times [0, 1]$ and then computes the
$400\times400$ distance matrix for these points under the induced metric on the
flat torus.  Use Ripser to compute the persistent homology of this metric
space.

**Exercise**: One way to produce a Klein bottle is to take a square $[0, 1]
\times [0, 1]$ and then identify opposite edges, with the left and right sides
identified with a twist. This is called a flat Klein bottle. More explicitly,
the flat Klein bottle is the quotient space $([0, 1] \times [0, 1]) / \sim$,
where $(0, y) \sim (1, 1 - y)$ for all $y$ in $[0, 1]$ and where $(x, 0) \sim
(x, 1)$ for all $x$ in $[0, 1]$. The Euclidean metric on $[0, 1] \times [0, 1]$
induces a metric on the flat Klein bottle. For example, in the induced metric
on the flat Klein bottle, the distance between $(0, 4/10)$ and $(1, 6/10)$ is
zero, since these two points are identified. The distance between $(1/10,
4/10)$ and $(9/10, 6/10)$ is $2/10$, by passing through the point $(0, 4/10)
\sim (1, 6/10)$.

Write a Python script (or code in another language) that selects 400 random
points from the square $[0, 1] \times [0, 1]$ and then computes the
$400\times400$ distance matrix for these points under the induced metric on the
flat Klein bottle. Use Ripser to compute the persistent homology of this metric
space.

If you have Ripser installed on your local machine, change to
$\mathbb{Z}/3\mathbb{Z}$ coefficients and see how the persistent homology
changes.

**Exercise**: One way to produce a projective plane is to take the unit sphere
$S^2$ in $\mathbb{R}^3$ and then identify antipodal points. More explicitly,
the projective plane is the quotient space $S^2 / (x \sim -x)$. The Euclidean
metric on $S^2$ induces a metric on the projective plane.

Write a Python script (or code in another language)  that selects 400 random
points from the unit sphere $S^2$ in $\mathbb{R}^3$ and then computes the
$400\times400$ distance matrix for these points under the induced metric on the
projective plane. Use Ripser to compute the persistent homology of this metric
space.

If you have Ripser installed on your local machine, change to
$\mathbb{Z}/3\mathbb{Z}$ coefficients and see how the persistent homology
changes.

---

(See also [Part 1](persistent-homology-tutorial-1.md),
[Part 3](persistent-homology-tutorial-3.md), and
[Part 4](persistent-homology-tutorial-4.md).)
