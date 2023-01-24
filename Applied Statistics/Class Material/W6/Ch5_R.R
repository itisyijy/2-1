x <- seq(-2, 2, 0.2)
y <- -x^2
cbind(x, y)
plot(x, y)
cor(x, y)

# Simulating a sample mean from a Weibull
k=50000
n=10
mns = numeric(k)
for(i in 1:k) mns[i]=mean(rweibull(n, scale=2, shape=5))
summary(mns)
sd(mns)

length(mns)

library("Devore7")
densityplot(~mns, plot.points = FALSE)
histogram(~mns, nint = 50)
qqmath(~mns, aspect=1, type=c("g", "l"))

library(nortest) ## package loading
pearson.test(mns)

# Simulating a sample mean from a Normal
k=10000
mns05 = mns10 = mns20 = mns30 = numeric(k)
for(i in 1:k) {
  mns05[i]=mean(rnorm(5, mean=8.25, sd=0.75))
  mns10[i]=mean(rnorm(10, mean=8.25, sd=0.75))
  mns20[i]=mean(rnorm(20, mean=8.25, sd=0.75))
  mns30[i]=mean(rnorm(30, mean=8.25, sd=0.75))
}
histogram(~mns05 + mns10 + mns20 + mns30, nint = 50)
densityplot(~mns05 + mns10 + mns20 + mns30, plot.points = F)

pearson.test(mns05)
pearson.test(mns10)
pearson.test(mns20)
pearson.test(mns30)


# Simulating a sample mean from a log-normal
k=10000
mns05 = mns10 = mns20 = mns30 = numeric(k)
for(i in 1:k) {
  mns05[i]=mean(rlnorm(5, mean=8.25, sd=0.75))
  mns10[i]=mean(rlnorm(10, mean=8.25, sd=0.75))
  mns20[i]=mean(rlnorm(20, mean=8.25, sd=0.75))
  mns30[i]=mean(rlnorm(30, mean=8.25, sd=0.75))
}
histogram(~mns05 + mns10 + mns20 + mns30, nint = 50)
densityplot(~mns05 + mns10 + mns20 + mns30, plot.points = F)

pearson.test(mns05)
pearson.test(mns10)
pearson.test(mns20)
pearson.test(mns30)

library(fitdistrplus)

ks.test(mns05, "pnorm", mean=mean(mns05), sd=sd(mns05))
ks.test(mns10, "pnorm", mean=mean(mns10), sd=sd(mns10))
ks.test(mns20, "pnorm", mean=mean(mns20), sd=sd(mns20))
ks.test(mns30, "pnorm", mean=mean(mns30), sd=sd(mns30))

# Simulating a sample mean from a Uniform
k=10000
mns1 = mns2 = mns3 = mns4 = mns5 = mns6 = numeric(k)
for(i in 1:k) {
  mns1[i]=mean(runif(1, -1, 1))
  mns2[i]=mean(runif(2, -1, 1))
  mns3[i]=mean(runif(3, -1, 1))
  mns4[i]=mean(runif(4, -1, 1))
  mns5[i]=mean(runif(5, -1, 1))
  mns6[i]=mean(runif(6, -1, 1))
}
histogram(~mns1 + mns2 + mns3 + mns4 + mns5 + mns6, nint = 50)
densityplot(~mns1 + mns2 + mns3 + mns4 + mns5 + mns6, plot.points = F)

pearson.test(mns1)
pearson.test(mns2)
pearson.test(mns3)
pearson.test(mns4)
pearson.test(mns5)
pearson.test(mns6)

ks.test(mns1, "pnorm", mean=mean(mns1), sd=sd(mns1))
ks.test(mns2, "pnorm", mean=mean(mns2), sd=sd(mns2))
ks.test(mns3, "pnorm", mean=mean(mns3), sd=sd(mns3))
ks.test(mns4, "pnorm", mean=mean(mns4), sd=sd(mns4))
ks.test(mns5, "pnorm", mean=mean(mns5), sd=sd(mns5))
ks.test(mns6, "pnorm", mean=mean(mns6), sd=sd(mns6))
