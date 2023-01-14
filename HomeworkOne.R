dice <- (1:6)
youWin = 0
youWinBiggest = 0

for(i in 1:1e6) {
  yourRolls <- sample(dice, 5, replace = T)
  yourTotal <- sum(yourRolls)
  yourBiggest <- max(yourRolls, na.rm = FALSE)
  
  myRolls <- sample(dice, 7, replace = T)
  myTotal <- sum(myRolls)
  myBiggest <- max(myRolls, na.rm = FALSE)
  
  if (yourTotal > myTotal) 
    {youWin = youWin + 1}
  i = i + 1 

  if (yourBiggest > myBiggest) 
    {youWinBiggest = youWinBiggest + 1}
}
  
probYouWin <- youWin/1e6
probYouWinBiggest <- youWinBiggest/1e6



  


