install.packages("fitdistrplus")
library(fitdistrplus)
mydata <- scan("C:\\Users\\samsung\\Desktop\\±¹±¤È£\\2020\\applied_statistics\\chapter4\\R\\mydata.txt")
mydata
length(mydata)

fitdist(mydata, "weibull")

ks.test(mydata, "pweibull", scale=43.2474500, shape=6.4632971)
ks.test(mydata, "pnorm", mean=mean(mydata), sd=sd(mydata))

fit_w  <- fitdist(mydata, "weibull")
fit_n <- fitdist(mydata, "norm")
gofstat(list(fit_w, fit_n), fitnames = c("weibull", "norm"))

data("groundbeef", package = "fitdistrplus")
head(groundbeef)
my_data <- groundbeef$serving
hist(my_data)
length(my_data)

fit_w  <- fitdist(my_data, "weibull")
fit_g  <- fitdist(my_data, "gamma")
fit_ln <- fitdist(my_data, "lnorm")

gofstat(list(fit_w, fit_g, fit_ln), fitnames = c("weibull", "gamma", "lnorm"))

data("endosulfan", package = "fitdistrplus")
head(endosulfan)
my_data <- endosulfan$ATV

install.packages("actuar")
library(actuar)

fit_ln <- fitdist(my_data, "lnorm")
fit_ll <- fitdist(my_data, "llogis", start = list(shape = 1, scale = 500)) # logistic distribution
fit_P  <- fitdist(my_data, "pareto", start = list(shape = 1, scale = 500))
fit_B  <- fitdist(my_data, "burr",   start = list(shape1 = 0.3, shape2 = 1, rate = 1))

gofstat(list(fit_ln, fit_ll, fit_P, fit_B), fitnames = c("lnorm", "llogis", "Pareto", "Burr"))

install.packages("nortest")
library(nortest)
x.norm<-rnorm(n=200,m=10,sd=2)
sf.test(x.norm)#Shapiro-Francia test
ad.test(x.norm)#Anderson-Darling21 test:
cvm.test(x.norm)#Cramer-Von Mises test 
lillie.test(x.norm)#Lilliefors22 test:
pearson.test(x.norm)#Pearson chi-square test:

x.poi<-rpois(n=200,lambda=2.5)
sf.test(x.poi)
sf.test(aov.ex1$residuals)

