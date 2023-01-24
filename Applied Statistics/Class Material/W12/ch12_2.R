# Example 12.4

x <- c(132.0, 129.0, 120.0, 113.2, 105.0, 92.0, 84.0, 83.2, 88.4, 59.0, 80.0, 81.5, 71.0, 69.2)
y <- c(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)

plot(x, y)
length(x)
mean(x)
mean(y)
sxx <- sum((x-mean(x))^2); sxx
sxy <- sum((x-mean(x))*(y-mean(y))); sxy
beta1 <- sxy/sxx; beta1
beta0 <- mean(y)-beta1*mean(x); beta0
    
f <- lm(y~x)
summary(f)

fit <- 75.21243-0.20939*x;fit
res <- y-fit

cbind(x, y, fit, res)

sum(res^2)/(length(x)-2)
sqrt(sum(res^2)/(length(x)-2))


# Example 12.9

x <- c(132.0, 129.0, 120.0, 113.2, 105.0, 92.0, 84.0, 83.2, 88.4, 59.0, 80.0, 81.5, 71.0, 69.2)
y <- c(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)
f <- lm(y~x)
summary(f)

fit <- 75.21243-0.20939*x;fit
res <- y-fit;res

?lm
f$coefficients
f$fitted.values
cbind(fit, f$fitted.values)
cbind(res, f$residuals)
sigma(f)

# SST and SSE
sum((y-mean(y))^2) # 377.1743
sum(res^2)
1- sum(res^2)/sum((y-mean(y))^2)


# confidence interval of beta1

sxx <- sum((x-mean(x))^2);sxx
sqrt(sxx)
2.564/sqrt(sxx)

-0.20930+2.179*0.03109
-0.20930-2.179*0.03109

# confidence interval and prediction interval
x <- c(132.0, 129.0, 120.0, 113.2, 105.0, 92.0, 84.0, 83.2, 88.4, 59.0, 80.0, 81.5, 71.0, 69.2)
y <- c(46.0, 48.0, 51.0, 52.1, 54.0, 52.0, 59.0, 58.7, 61.6, 64.0, 61.4, 54.6, 58.8, 58.0)
f <- lm(y~x)
summary(f)

75.21243-0.20939*100+2.179*2.564*sqrt(1/14+(100-93.393)^2/6802.769)
75.21243-0.20939*100-2.179*2.564*sqrt(1/14+(100-93.393)^2/6802.769)

75.21243-0.20939*100+2.179*2.564*sqrt(1+1/14+(100-93.393)^2/6802.769)
75.21243-0.20939*100-2.179*2.564*sqrt(1+1/14+(100-93.393)^2/6802.769)

predict(f, list(x=c(100)),interval="conf")
predict(f, list(x=c(100)),interval="pred")

# Correlation Coefficient
x <- c(2.52, 2.87, 3.05, 3.43, 3.68, 3.76, 3.76, 4.50, 4.50, 5.26)
y <- c(54.74, 59.01, 72.92, 50.85, 54.99, 60.56, 69.08, 77.03, 69.97, 90.70)
plot(x, y)
cor(x, y)
0.7492*sqrt(8)/sqrt(1-0.7492^2)
1-pt(3.199, 8)
