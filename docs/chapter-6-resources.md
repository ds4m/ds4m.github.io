
# Chapter 6: Operations Research

Authors: [Alice Paul](https://alicepaul.github.io/) and
[Susan Martonosi](https://www.hmc.edu/mathematics/people/faculty/susan-martonosi/)

> *Digital resources supplementing the chapter*

---

## Sample R code

[R code for generating Figure 6.7 of the text](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-6-resources/OR_Chapter_Figure7.R)

Figure 6.7 shows two images:
 1. a histogram of 1000 randomly generated $U(0,1)$ values overlaid with the density of that distribution
 2. a histogram of $X=-\frac{\ln(1-U)}{\lambda}$ with $\lambda=5$ created from the first distribution, with the exponential distribution (with $\lambda=5$) overlaid

[R code for generating Table 6.1 of the text](https://github.com/ds4m/ds4m.github.io/tree/master/chapter-6-resources/OR_Chapter_Table1.R)

Table 6.1 illustrates several different probability distributions, including
 * discrete uniform,
 * binomial,
 * geometric,
 * Poisson,
 * uniform,
 * triangle,
 * normal, and
 * exponential.

Each of those distributions can be accessed using code in a variety of
languages, as shown below.  The reader may also be interested in the
individual documentation for probability distributions in
[R](https://en.wikibooks.org/wiki/R_Programming/Probability_Distributions),
[MATLAB](https://www.mathworks.com/help/stats/probability-distributions-1.html)
[Python](https://docs.scipy.org/doc/scipy/reference/stats.html), or
[Julia](https://github.com/JuliaStats/Distributions.jl).

## Code reference for random number generation

In each example below, $n$ is the number of values to generate.

All Python code assumes you have installed [SciPy](https://www.scipy.org/)
and have imported its statistics package with `import scipy.stats as stats`.

All Julia code assumes you have installed
[Distributions.jl](https://github.com/JuliaStats/Distributions.jl)
and have imported it with `using Distributions`.

### Discrete uniform distribution on $\{a,a+1,\ldots,b\}$

In R:
```r
sample( a:b, n, replace=TRUE )
```

In MATLAB:
```matlab
randi( [a,b], n, 1 )
```

In Python:
```python
stats.randint.rvs( a, b, size=n )
```

In Julia:
```julia
rand( a:b, n )
```

### Binomial distribution with $k$ trials each having probability $p$

In R:
```r
rbinom( n, k, p )
```

In MATLAB:
```matlab
random( "Binomial", k, p, n, 1 )
```

In Python:
```python
stats.binom.rvs( k, p, size=n )
```

In Julia:
```julia
rand( Binomial( k, p ), n )
```

### Geometric distribution with success probability $p$

(specifically, the number of failures observed before a success was observed)

In R:
```r
rgeom( n, p )
```

In MATLAB:
```matlab
random( "Geometric", p, n, 1 )
```

In Python:
```python
stats.geom.rvs( p, size=n )
```

In Julia:
```julia
rand( Geometric( p ), n )
```

### Poisson distribution with expected rate $\lambda$

In R:
```r
rpois( n, lambda )
```

In MATLAB:
```matlab
random( "Poisson", lambda, n, 1 )
```

In Python:
```python
stats.poisson( lambda, size=n )
```

In Julia:
```julia
rand( Poisson( lambda ), n )
```

### Uniform distribution on the interval $[a,b]$

In R:
```r
runif( n, a, b )
```

In MATLAB:
```matlab
random( "Uniform", a, b, n, 1 )
```

In Python:
```python
stats.uniform.rvs( a, b, size=n )
```

In Julia:
```julia
rand( Uniform( a, b ), n )
```

### Triangular distribution on the interval $[a,b]$ with mode $c$

In R:

(This assumes you have done `install.packages('triangle')` and
`library('triangle')`.)
```r
rtriangle( n, a, b, c )
```

In MATLAB this distribution is not built in.

In Python:
```python
stats.triang.rvs( (c-a)/(b-a), a, b-a, size=n )
```

Distributions.js does not contain this distribution.

### Normal distribution with mean $\mu$ and standard deviation $\sigma$

In R:
```r
rnorm( n, mu, sigma )
```

In MATLAB:
```matlab
random( "Normal", mu, sigma, n, 1 )
```

In Python:
```python
stats.norm.rvs( mu, sigma, size=n )
```

In Julia:
```julia
rand( Normal( mu, sigma ), n )
```

### Exponential distribution with rate $\lambda$

In R:
```r
rexp( n, lambda )
```

In MATLAB:
```matlab
random( "Exponential", lambda, n, 1 )
```

In Python:
```python
stats.expon.rvs( lambda, size=n )
```

In Julia:
```julia
rand( Exponential( lambda ), n )
```

---
