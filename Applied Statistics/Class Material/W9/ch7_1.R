(samp <- rnorm(10, mean=6.3, sd=0.75))
mean(samp)
mean(samp)+c(lower=-1, upper=1) * 1.96 * 0.75/sqrt(10)

(samp <- matrix(rnorm(50*10, mean=6.3, sd=0.75), nr=10))[,1:5]
(lims <- outer(c(lower=-1, upper=1) * 1.96 * 0.75/sqrt(10), colMeans(samp), "+"))[,1:5]

outer(c(1,2),2, "+")

library(plotrix)
y <- colMeans(samp)
err <- 1.96 * 0.75/sqrt(10)
plotCI(1:50,y,err,main="Basic plotCI")
abline(h=6.3)
