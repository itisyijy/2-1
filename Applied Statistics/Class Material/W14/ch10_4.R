degree <- c(0.56, 1.12, 0.90, 1.07, 0.94,
              + 0.72, 0.69, 0.87, 0.78, 0.91,
              + 0.62, 1.08, 1.07, 0.99, 0.93)
type <- c(rep("1", 5), rep("2", 5), rep("3", 5))
cbind(degree, type)
oneway <- aov(degree ~ type)
summary(oneway)

posthoc <- TukeyHSD(x=oneway, 'type', conf.level=0.95)
posthoc

qtukey(0.95, 3, 12)

0.794-0.918 + qtukey(0.95, 3, 12)*sqrt(0.03084/5)
0.794-0.918 - qtukey(0.95, 3, 12)*sqrt(0.03084/5)

plot(posthoc)

qtukey(0.95, 5, 40)
