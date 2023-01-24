# Testing for the homogeneity
a <- matrix(c(34, 23, 32, 65, 52, 28, 17, 25, 16, 21, 19, 14, 13, 6, 10), nrow=3)
a
chi <- chisq.test(a)
chi

chi$expected

qchisq(0.95, 8)

# Testing for the Independence
b <- matrix(c(24, 15, 17, 52, 73, 80, 58, 86, 36), nrow=3, byrow=T)
b
chisq.test(b)

1-pchisq(22.47, 4) 

estimated <- matrix(c(17.02, 22.10, 16.89, 62.29, 80.88, 61.83, 54.69, 71.02, 54.29), nrow=3, byrow=T)

sum((b-estimated)^2/estimated)

# Binomial distribution fitting
qchisq(0.95, 4)

# Poisson distribution fitting
x <- c(0, 1, 2, 3, 4, 5)
f <- c(77, 90, 55, 30, 5, 3)
p <- f/sum(f); p
sum(x*p)
sum(x^2*p)-sum(x*p)^2
sqrt(1.264423)

qchisq(0.95, 3)

# Normal distribution fitting
x <- c(27, 29, 31, 33, 35, 37, 39)
f <- c(7, 22, 36, 45, 33, 28, 4)
p <- f/sum(f); p
sum(x*p)
sum(x^2*p)-sum(x*p)^2
sqrt(8.411429)

qchisq(0.9, 4)

1-pchisq(14.159, 8)

