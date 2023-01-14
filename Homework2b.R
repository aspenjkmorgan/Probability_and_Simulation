nsim <- 1e6
results <- rep(1:nsim)
databases <- c(rep(1, 5), rep(0, 4))

for (i in 1:nsim){
  pickFour <- sample(databases, 4, replace = F)
  atleastTwoWork <- sum(pickFour) >= 2
  
  results[i] <- atleastTwoWork
}

prob = sum(results) / nsim
(prob)

