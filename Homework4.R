nsim <- 1e6

results <- rep(1:nsim)

for(i in 1:nsim) {
  powerBall <- sample(1:69, 5, replace = F)
  x <- sort(powerBall, decreasing = F)
  differences <- diff(x)
  results[i] = sum(differences == 1)
  
}

partA <- sum(results)/nsim

pOfZero <- sum(results == 0)/nsim
pOfOne <- sum(results == 1)/nsim
pOfTwo <- sum(results == 2)/nsim
pOfThree <- sum(results == 3)/nsim
pOfFour <- sum(results == 4)/nsim
