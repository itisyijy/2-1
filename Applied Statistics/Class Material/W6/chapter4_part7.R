library(Devore7)
str(xmp04.30)
xmp04.30

qqmath(~Voltage, xmp04.30, aspect=1, type=c("g", "p", "r"))

qqnorm(xmp04.30$Voltage)
qqline(xmp04.30$Voltage)

x <- c(29, 32, 33, 45, 46, 54, 55)
qqnorm(x)
qqline(x)

f <- (1:length(x) - 0.375)/(length(x)+0.25)
f
q <- qnorm(f)
q
plot(q, x)
