# Example 7-11
modulus <- c(6807.99, 7637.06, 6663.28, 6165.03, 6991.41, 6992.23, 6981.46, 7569.75, 7437.88, 6872.39, 7663.18, 
             6032.28, 6906.04, 6617.17, 6984.12, 7093.71, 7659.50, 7378.61, 7295.54, 6702.76, 7440.17, 8053.26, 
             8284.75, 7347.95, 7422.69, 7886.87, 6316.67, 7713.65, 7503.33, 7674.99)
mean(modulus) + c(lower=-1, upper=+1) * qt(0.975,29)*sd(modulus)/sqrt(length(modulus))
t.test(modulus)

# Example 7-14
library(Devore7)
str(xmp07.11)
elasticity <- xmp07.11$Elasticity
mean(elasticity) + c(lower=-1, upper=+1) *  qt(0.975,15)*sd(elasticity)/sqrt(length(elasticity))
t.test(xmp07.11$Elasticity)

# Example 7-12, 7-13
fat <- c(25.2, 21.3, 22.8, 17.0, 29.8, 21.0, 25.5, 16.0, 20.9, 19.5)
mean(fat)+c(lower=-1, upper=+1)*qt(0.975,9)*sd(fat)/sqrt(length(fat))
t.test(fat)
mean(fat)
mean(fat)+c(lower=-1, upper=+1)*qt(0.975,9)*sd(fat)*sqrt(1+1/length(fat))

# Example 7-15
voltage <- c(1470, 1510, 1690, 1740, 1900, 2000, 2030, 2100, 2190,
               + 2200, 2290, 2380, 2390, 2480, 2500, 2580, 2700)
var(voltage)
16*var(voltage)/qchisq(0.975, 16)
16*var(voltage)/qchisq(0.025, 16)
qchisq(0.975, 16)
qchisq(0.025, 16)
