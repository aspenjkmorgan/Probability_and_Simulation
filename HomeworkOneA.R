dice <- c(1:6)
youWin <- c()
youWinBiggest <- c()

for(i in 1:1e6) {
  yourRolls <- sample(dice, 5, replace = T)
  yourTotal <- sum(yourRolls)
  yourBiggest <- max(yourRolls, na.rm = FALSE)
  
  myRolls <- sample(dice, 7, replace = T)
  myTotal <- sum(myRolls)
  myBiggest <- max(myRolls, na.rm = FALSE)
  
  youWin[i] <- (yourTotal > myTotal) 
  
  youWinBiggest[i] <- (yourBiggest > myBiggest) 
 
   i = i + 1 
}
  
probYouWin <- sum(youWin)/1e6
(probYouWin)
probYouWinBiggest <- sum(youWinBiggest)/1e6
(probYouWinBiggest)


  


