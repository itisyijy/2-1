type1 <- c(655.5,788.3,734.3,721.4,679.1,699.4)
type2 <- c(789.2,772.5,786.9,686.1,732.1,774.8)
t.test(type1, type2)

compression <- c(655.5,788.3,734.3,721.4,679.1,699.4,
                   + 789.2,772.5,786.9,686.1,732.1,774.8,
                   + 737.1,639.0,696.3,671.7,717.2,727.1,
                   + 535.1,628.7,542.4,559.0,586.9,520.0)
type <- c(rep("1", 6), rep("2", 6), rep("3", 6), rep("4", 6))
type
oneway <- aov(compression ~ type)
summary(oneway)
posthoc <- TukeyHSD(x=oneway, 'type', conf.level=0.95)
posthoc
plot(posthoc)
