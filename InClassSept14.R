numbers <- c(1:10)
isGreater <- c(1:1e6)




for (i in 1:1e6) {
  dif <- c(sample(numbers, 1, replace = T), sample(numbers, 1, replace = T))
  
  isGreater[i] <- (abs(dif[1] - dif[2]) > 5)
  result <- sum(isGreater) + result
}

prob <- result / (1e6)


