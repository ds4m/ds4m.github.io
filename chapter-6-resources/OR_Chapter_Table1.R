## Table 1 in chapter "Operations Research" in Data Science for Mathematicians
## Authors: Alice J. Paul and Susan E. Martonosi
## Table Caption: Common probability distributions.  
## The first row gives common discrete probability distributions: discrete uniform, 
## binomial, geometric and Poisson.  The second row gives common continuous 
## probability distributions: uniform, triangle, normal, and exponential.

## Load the library that can generate the triangle distribution.  
library(triangle)

# Discrete uniform
x <- c(1:10)
y <- rep(0.1, 10)
plot(x,y, xlim=c(0,10.5), ylim = c(0,0.2), type="h", xlab = "X", ylab="Probability")
points(x,y,pch=16,cex=1)
dev.copy(jpeg,'discunif.jpg')
dev.off()

# Binomial
x <- c(0:25)
y <- dbinom(x,size=25, prob = 0.8)
plot(x,y, xlim=c(0,25), type="h", xlab = "X", ylab="Probability")
points(x,y,pch=16,cex=1)
dev.copy(jpeg,'binom.jpg')
dev.off()

# Geometric
x <- c(0:25)
y <- dgeom(x,prob = 0.3)
plot(x,y, xlim=c(0,25), type="h", xlab = "X", ylab="Probability")
points(x,y,pch=16,cex=1)
dev.copy(jpeg,'geom.jpg')
dev.off()

# Poisson
x <- c(0:50)
y <- dpois(x,lambda=12)
plot(x,y, xlim=c(0,50), type="h", xlab = "X", ylab="Probability")
points(x,y,pch=16,cex=1)
dev.copy(jpeg,'pois.jpg')
dev.off()

# Uniform
x <- c(0:10)
y <- dunif(x, min = 0, max = 10)
plot(x,y, xlim=c(0,10), type="l", xlab = "X", ylab="Probability Density")
points(c(0,10),c(0.1, 0.1), type="h")
dev.copy(jpeg,'unif.jpg')
dev.off()

# Triangle
x <- seq(from=0, to = 10, by = 0.001)
y <- dtriangle(x, a = 0, b = 10, c=2.5)
plot(x,y, xlim=c(0,10), type="l", xlab = "X", ylab="Probability Density")
dev.copy(jpeg,'triangle.jpg')
dev.off()

# Normal
x <- seq(from=0, to = 100, by = 0.01)
y <- dnorm(x, mean=50, sd=10)
plot(x,y, xlim=c(0,100), type="l", xlab = "X", ylab="Probability Density")
dev.copy(jpeg,'normal.jpg')
dev.off()

# Exponential
x <- seq(from=0, to = 100, by = 0.01)
y <- dexp(x, rate=1/5)
plot(x,y, xlim=c(0,100), type="l", xlab = "X", ylab="Probability Density")
dev.copy(jpeg,'exp.jpg')
dev.off()
