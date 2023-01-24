dexp(3, rate=0.5, log=T) 
log(dexp(3, rate=0.5))
log(0.5*exp(-0.5*3))
0.5*exp(-0.5*3)
dexp(3, rate=0.5) 

# Example 6.11
Time <- c(41.53, 18.73, 2.99, 30.34, 12.33, 117.52, 73.02, 223.63, 4.00, 26.78)
Time
1/mean(Time)

k <- 101
negloglik <- function(lambda){
  -sum(dexp(Time, rate=lambda, log=TRUE))
}
lambdas <- seq(0.01, 0.03, length=k)
est <- numeric(k)
for(i in 1:k){
  est[i] = negloglik(lambdas[i])
}
est
plot(lambdas, est)

str(optres <- nlminb(0.001, negloglik, lower=0))
optres$par

cubic <- function(x) {
 x^2 + 2*x + 1
}
nlminb(0, cubic)


# mle for the normal distribution
x <- rnorm(1000, 3, 2)
negloglik <- function(par) -sum(dnorm(x, mean=par[1], sd=par[2], log=TRUE))
str(optres <- nlminb(c(1,1), negloglik), lower=c(-100, 0))

# Mle for the negative binomial distribution :
x <- rnbinom(1000, mu = 10, size = 10)
hdev <- function(par)
    -sum(dnbinom(x, mu = par[1], size = par[2], log = TRUE))
nlminb(c(9, 12), hdev)


# Devore7 Example 4.31
install.packages("Devore7")
library(Devore7)
str(xmp04.31)
negloglik <- with(xmp04.31, function(pars) -sum(dweibull(lifetime, shape=pars[1],
                                                         scale=pars[2], log=TRUE)))
print(est <- nlminb(c(1, 1100), negloglik, lower=c(0, 0))$par)
