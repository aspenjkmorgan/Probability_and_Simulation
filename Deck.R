nsim <- 1e6

results <- rep(0,nsim)

deck <- rep(1:13, 4)

for (i in 1:nsim) {
  
  x <- sample(deck, 5, replace = F)
  results[i] <- length(unique(x))
  
}

prob = mean(results == 4)
(prob)


