# variances are equal
deinopis <- c(12.9, 10.2, 7.4, 7.0, 10.5, 11.9, 7.1, 9.9, 14.4, 11.3)
menneus <- c(10.2, 6.9, 10.9, 11.0, 10.1, 5.3, 7.5, 10.3, 9.2, 8.8)
t.test(deinopis, menneus, var.equal=T)
pt(-1.2453, 18)+(1-pt(1.2453, 18))

m1 <- mean(deinopis);m1
m2 <- mean(menneus);m2
var1 <- var(deinopis);var1
var2 <- var(menneus);var2
n1 <- 10
n2 <- 10

9/18*6.318+9/18*3.597

10.26-9.02 + qt(0.975, 18)*sqrt(4.9575)*sqrt(1/10+1/10)
10.26-9.02 - qt(0.975, 18)*sqrt(4.9575)*sqrt(1/10+1/10)

# variances are different
deinopis <- c(12.9, 10.2, 7.4, 7.0, 10.5, 11.9, 7.1, 9.9, 14.4, 11.3)
menneus <- c(10.2, 6.9, 10.9, 11.0, 10.1, 5.3, 7.5, 10.3, 9.2, 8.8)
t.test(deinopis, menneus)
pt(-1.2453, 16.74)+(1-pt(1.2453, 16.74))

m1 <- mean(deinopis);m1
m2 <- mean(menneus);m2
var1 <- var(deinopis);var1
var2 <- var(menneus);var2
n1 <- 10
n2 <- 10

df <- (var1/n1+var2/n2)^2/((var1/n1)^2/(n1-1)+(var2/n2)^2/(n2-1));df

(m1-m2)/(sqrt(var1/n1+var2/n2))

9/18*6.318+9/18*3.597
(m1-m2)/sqrt(4.9575)/sqrt(0.2)

10.26-9.02 + qt(0.975, 16)*sqrt(6.318/10+3.597/10)
10.26-9.02 - qt(0.975, 16)*sqrt(6.318/10+3.597/10)

10.26-9.02 + qt(0.975, 16.74)*sqrt(6.318/10+3.597/10)
10.26-9.02 - qt(0.975, 16.74)*sqrt(6.318/10+3.597/10)
qt(0.975, 16.74)

