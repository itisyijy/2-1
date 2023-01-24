library(Devore7)
str(xmp07.06)
with(xmp07.06, summary(Voltage))
with(xmp07.06, sd(Voltage))
qqmath(~Voltage, xmp07.06)

with(xmp07.06, mean(Voltage)+c(lower=-1, upper=+1) * 
       1.96 * sd(Voltage)/sqrt(length(Voltage)))

with(xmp07.06, t.test(Voltage))

with(xmp07.06, mean(Voltage)+c(lower=-1, upper=+1) * 
       qt(0.975, 47) * sd(Voltage)/sqrt(length(Voltage)))

with(xmp07.06, t.test(Voltage, conf.level=0.99))

prop.test(16, 48)

binom.test(16, 48)

with(xmp07.06, mean(Voltage)+ 
       qt(0.95, 47) * sd(Voltage)/sqrt(length(Voltage)))
qt(0.95, 47)

with(xmp07.06, mean(Voltage)- 
       qt(0.95, 47) * sd(Voltage)/sqrt(length(Voltage)))
