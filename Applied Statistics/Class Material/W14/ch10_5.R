modulus <- c(45.5, 45.3, 45.4, 44.4, 44.6, 43.9, 44.6, 44.0,
               + 44.2, 43.9, 44.7, 44.2, 44.0, 43.8, 44.6, 43.1,
               + 46.0, 45.9, 44.8, 46.2, 45.1, 45.5)
type <- c(rep("1", 8), rep("2", 8), rep("3", 6))
oneway <- aov(modulus ~ type)
summary(oneway)

posthoc <- TukeyHSD(x=oneway, 'type', conf.level=0.95)
posthoc

plot(posthoc)
