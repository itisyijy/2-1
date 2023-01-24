
##########################################################
# Palpreval fissure example
##########################################################
install.packages("Devore7")
library(Devore7)
xmp12.01
with(xmp12.01, plot(y~x))
summary(xmp12.01[, 2:3])
fm1 <- lm(y ~ x, data=xmp12.01)
summary(fm1)

fit <- -.3977+3.08*xmp12.01$x;fit
res <- xmp12.01$y-fit; res

fm1$residuals

sse <- sum(fm1$residuals^2);sse
sse/28
s <- sqrt(sse/(30-2));s

sst <- sum((xmp12.01$y-mean(xmp12.01$y))^2);sst
r2 <- 1-sse/sst;r2

ssx <- sum((xmp12.01$x-mean(xmp12.01$x))^2);ssx
s_beta1 <- s/sqrt(ssx); s_beta1

fm1$coefficients
qt(0.975, 28)
fm1$coefficients[2]+2.048*0.1506
fm1$coefficients[2]-2.048*0.1506

fm1$coefficients[2]/s_beta1

pt(-20.453, 28)

# Residual plot for palprebal
plot(fm1$fitted.values, fm1$residuals)
fm1.stdres = rstandard(fm1)
qqnorm(fm1.stdres)
head(fm1$fitted.values, n=10)
head(fm1$residuals, n=10)

# Evaluation of predictions
predict(fm1, list(x=c(0.6, 1, 1.4)))
predict(fm1, list(x=c(0.6, 1, 1.4)), se=TRUE)

# Confidence intervals on the mean response
predict(fm1, list(x=c(0.6, 1, 1.4)),interval="conf")
predict(fm1, list(x=c(0.6, 1, 1.4)),interval="pred")
1.450241+qt(0.975,28)*0.08821348
1.450241-qt(0.975,28)*0.08821348

##########################################################
# Example of drawing confidence interval
##########################################################
x=c(1,2,3,4,5,6,7,8,9,0)
y=c(13,28,43,35,96,84,101,110,108,13)

lm.out <- lm(y ~ x)
summary(lm.out)
newx = seq(min(x),max(x),by = 0.05)
conf_interval <- predict(lm.out, newdata=data.frame(x=newx), interval="confidence",
                         level = 0.95)
plot(x, y, xlab="x", ylab="y", main="Regression")
abline(lm.out, col="lightblue")
lines(newx, conf_interval[,2], col="blue", lty=2)
lines(newx, conf_interval[,3], col="blue", lty=2)

##########################################################
# Example of income and happiness
##########################################################
income.data <- read.csv("C:\\Users\\samsung\\Desktop\\±¹±¤È£\\2020\\applied_statistics\\chapter12\\income.data.csv", header=T)
income.happiness.lm <- lm(happiness ~ income, data = income.data)
summary(income.happiness.lm)

newx = seq(min(income.data$income),max(income.data$income),by = 0.1)
newx
conf_interval <- predict(income.happiness.lm, newdata=data.frame(income=newx), 
                         interval="confidence", level = 0.95)
plot(income.data$income, income.data$happiness, xlab="x", ylab="y", 
     main="Regression", cex=0.5)
abline(income.happiness.lm, col="lightblue")
lines(newx, conf_interval[,2], col="blue", lty=2)
lines(newx, conf_interval[,3], col="blue", lty=2)

