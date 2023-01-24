# Comparing estimators for the mean mu, normal population
k <- 50000
n <- 25
mns <- meds <- extravg <- trmns <- numeric(k)
for (i in 1:k) {
  samp <- rnorm(n, mean=6, sd=1.2)
  mns[i] <- mean(samp)
  meds[i] <- median(samp)
  extravg[i] <- mean(range(samp))
  trmns[i] <- mean(samp, trim=0.05)
}
resultsN <- list(means = mns, medians = meds, extravg = extravg, 
                 trimmed = trmns)
sapply(resultsN, mean)
sapply(resultsN, sd)

# Comparing estimators for the mean mu, Cauchy population
for (i in 1:k) {
  samp <- rcauchy(n, location=6, scale=1.2)
  mns[i] <- mean(samp)
  meds[i] <- median(samp)
  extravg[i] <- mean(range(samp))
  trmns[i] <- mean(samp, trim=0.05)
}
resultsN <- list(means = mns, medians = meds, extravg = extravg, 
                 trimmed = trmns)
sapply(resultsN, mean)
sapply(resultsN, sd)

# Comparing estimators for the mean mu, Uniform population
for (i in 1:k) {
  samp <- runif(n, min=3, max=9)
  mns[i] <- mean(samp)
  meds[i] <- median(samp)
  extravg[i] <- mean(range(samp))
  trmns[i] <- mean(samp, trim=0.05)
}
resultsN <- list(means = mns, medians = meds, extravg = extravg, 
                 trimmed = trmns)
sapply(resultsN, mean)
sapply(resultsN, sd)

x <- c(132.0, 129.0, 120.0, 113.2, 105.0, 92.0, 84.0, 83.2, 88.4, 59.0, 80.0, 81.5, 71.0, 69.2)
y <- c(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)
cbind(x, y)
plot(x, y)
f <- lm(y~x)
summary(f)

