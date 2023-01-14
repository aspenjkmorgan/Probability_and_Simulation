nsim <- 1e6
timeOne <- timeTwo <- tasks <- bigTasks <- rep(1:nsim)

for (i in 1:nsim) {
  active <- rbinom(1, 500, 0.35)
  tasks[i] <- sum(rpois(active, 3.5))
  bigTasks[i] <- sum(sample(c(0,1), tasks[i], TRUE, c(0.97, 0.03)))
  timeOne[i] <- sum(rgamma(tasks[i] - bigTasks[i], 10, 4))
  timeTwo[i] <- sum(rgamma(bigTasks[i], 3, 0.2))
}

exp_time <- mean(timeOne + timeTwo)
q <- quantile(timeOne + timeTwo, 0.95)
prob <- sum((timeOne + timeTwo) <= 1440)/nsim
