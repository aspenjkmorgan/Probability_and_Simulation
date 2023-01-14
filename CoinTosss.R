coin <- c("Heads", "Tails")

n <- 1000
flip <- sample(coin, n, replace = T)

result <- sum(flip)
("For 1000 flips, the proportion is: ")
(prop <- mean(flip))


