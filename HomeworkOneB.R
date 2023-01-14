deck <- c(rep(1:13, 4))

noDuplicates <- c()

for (i in 1:1e6 - 1) {
  
  shuffledDeck <- sample(deck, 52, replace = F)
 
  allDifferences <- diff(shuffledDeck)
  ruleBreaks <- sum(allDifferences == 0)
  
  noDuplicates[i] <- (ruleBreaks == 0)
  
  i <- i + 1}

probNoDuplicate <- sum(noDuplicates)/1e6
(probNoDuplicate)
