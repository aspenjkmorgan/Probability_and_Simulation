nsim <- 1e6
y <- rep(0, nsim)
z <- rep(0, nsim)

for (i in 1: nsim) {
  roll <- sample(1:6, 2, replace = T)
  y[i] <- sum(roll)
  z[i] <- any(roll == 2)
}

mean(z[y==5])
