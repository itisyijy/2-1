degree <- c(0.56, 1.12, 0.90, 1.07, 0.94,
              + 0.72, 0.69, 0.87, 0.78, 0.91,
              + 0.62, 1.08, 1.07, 0.99, 0.93)
sst <- sum(degree^2) - sum(degree)^2/15; sst
sstr <- (4.59^2+3.97^2+4.69^2)/5 - 13.25^2/15; sstr
sse <- sst-sstr ; sse

deg <- matrix(c(degree), nrow=3, byrow=T)
rowSums(deg)

grandMean <- mean(degree)
sst <- sum((degree - grandMean)^2);sst
sstr <- sum(rowSums(deg)^2)/5 - sum(degree)^2/15; sstr
sstr1 <- sum((rowMeans(deg)-grandMean)^2)*5; sstr1

sse <- sst-sstr ; sse

sd <- apply(deg, 1, sd);sd
sum(sd^2)*4

degree <- c(0.56, 1.12, 0.90, 1.07, 0.94,
          + 0.72, 0.69, 0.87, 0.78, 0.91,
          + 0.62, 1.08, 1.07, 0.99, 0.93)
type <- c(rep("1", 5), rep("2", 5), rep("3", 5))
oneway <- aov(degree ~ type)
summary(oneway)
