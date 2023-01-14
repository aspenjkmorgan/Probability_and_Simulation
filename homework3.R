nsim <- 1e6

result <- together <- rep(1:nsim)
resultA <- resultB <- resultC <- rep(1:nsim)

for (i in 1:nsim) {
  A <- sample(0:1, 1, replace = T, prob = c(0.3, 0.7)) 
  B <- sample(0:1, 1, replace = T, prob = c(0.4, 0.6))
  C <- sample(0:1, 1, replace = T, prob = c(0.2, 0.8))
  
  together[i] <- A + B + C
  resultA[i] <- any(A==1)
  resultB[i] <- any(B==1)
  resultC[i] <- any(C==1)
  
}

(resultA)
probA <- mean(resultA[together==1])
probB <- mean(resultB[together==1])
probC <- mean(resultC[together==1])
