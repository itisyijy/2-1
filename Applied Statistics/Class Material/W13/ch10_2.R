compression <- c(655.5,788.3,734.3,721.4,679.1,699.4,
                   + 789.2,772.5,786.9,686.1,732.1,774.8,
                   + 737.1,639.0,696.3,671.7,717.2,727.1,
                   + 535.1,628.7,542.4,559.0,586.9,520.0)

comp <- matrix(compression, nrow=4, byrow=T)
comp
x.. <- sum(comp)

grandmean <- x../24
grandmean

rowSums(comp)
rowMeans(comp)

rowSD <- apply(comp, 1, sd)
rowSD

cbind(comp, sample_mean = rowMeans(comp), sample_SD = rowSD)
mstr <- 6*(sum((rowMeans(comp)-grandmean)^2))/(4-1)
mstr
mse <- (sum(rowSD^2))/4
mse

f <- mstr/mse;f

qf(0.95, 3, 20)

compression <- c(655.5,788.3,734.3,721.4,679.1,699.4,
                 + 789.2,772.5,786.9,686.1,732.1,774.8,
                 + 737.1,639.0,696.3,671.7,717.2,727.1,
                 + 535.1,628.7,542.4,559.0,586.9,520.0)
type <- c(rep("1", 6), rep("2", 6), rep("3", 6), rep("4", 6))
type
cbind(compression, type)
oneway <- aov(compression ~ type)
summary(oneway)
