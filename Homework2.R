nsim <- 1e6
results <- rep(1:nsim)
bag <- c(rep("white", 6), rep("red", 5), rep("blue", 4))


for (i in 1:nsim) {
  pickThree <- sample(bag, 3, replace = F)
  isUnique <- length(unique(pickThree)) == 1
  results[i] <- isUnique
}

prob = sum(results) / nsim
(prob)


