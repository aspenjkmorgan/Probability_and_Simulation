nsim <- 1e6

time <- tasks <- rep(1:nsim)

for (i in 1:nsim) {
  active <- rbinom(1, 500, 0.35)
  tasks[i] <- sum(rpois(active, 3.5))
  time[i] <- sum(rgamma(tasks[i], 10, 4))
}

exp_time <- mean(time)
prob <- sum(time <= 1440)/nsim
q <- quantile(time, 0.95)
            