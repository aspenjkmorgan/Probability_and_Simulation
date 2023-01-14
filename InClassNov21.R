curve()
curve(1- pnorm(x, 6, 5), 9.6, 9.8)
curve(0.6*(1-pexp(x, 0.1)), add=T, col = "blue")
