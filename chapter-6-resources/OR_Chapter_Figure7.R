## Figure 7 in chapter "Operations Research" in Data Science for Mathematicians
## Authors: Alice J. Paul and Susan E. Martonosi
## Figure Caption: On the left, histogram of 1000 randomly generated U(0,1)
## random variables with density of the U(0,1) distribution overlaid.  On the right,
## histogram of X = -(ln(1-U)/lambda), where lambda = 5, computed using the 1000
## U(0,1) random variables from the left panel, with the Exp(5) distribution overlaid.

# Set the seed for the random number generator
set.seed(123)      

# Generate 1000 U(0,1) random variables
x <- runif(n=1000)  

# Set the rate parameter for the exponential distribution
lambda <- 5       

# Generate Y from X using the inverse CDF of the exponential distribution
y <- -log(1-x)/lambda

# Create a 1x2 matrix of plots
par(mfrow=c(1,2))

# Plot the left histogram of the 1000 U(0,1) random variables
hist(x, main="", xlab="U(0,1)", probability=TRUE)

# Overlay the density function for the U(0,1) distribution
points(seq(from=0, to=1, by=0.001),dunif(seq(from=0, to=1, by=0.001)), type="l")

# Plot the right histogram of the 1000 Exp(5) random variables calculated from X
hist(y, main="", xlab="Exp(5)", probability=TRUE)

# Overlay the density function of the Exp(5) distribution
points(seq(from=0, to=1.5, by=0.001),dexp(seq(from=0, to=1.5, by=0.001), rate=5), type="l")

