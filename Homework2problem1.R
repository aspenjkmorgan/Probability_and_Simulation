nsim <- 1e6
results <- rep(1:nsim)
allThreeSame <- c()
bag <- c(rep(0, 6), rep(1, 5), rep(4, 4))


for (i in 1:nsim) {
  pickThree <- sample(bag, 3, replace = F)
 
   allWhite <- pickThree == 0
  allRed <- pickThree == 3
  allBlue <- pickThree == 12
  
  allThreeSame[i] <- (allWhite | allRed | allBlue)
  results <- sum(allThreeSame)
}

prob = mean(results)
(prob)
