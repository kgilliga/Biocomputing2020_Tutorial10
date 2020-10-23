setwd ("/Users/kearagilligan/Desktop/Biocomputing/Biocomputing2020_Tutorial10/")
#Question 1- cumulative score over time graph
#Load in data
scores= read.table(file = "UWvMSU_1-22-13.txt" ,header=TRUE,sep="\t")
head(scores)
x=scores$time
scores$csum = ave(scores$score, scores$team, FUN=cumsum)
head(scores)
UWscore=(scores$csum)
MSUscore=scores$csum
plot(x,UWscore,type='l', col="red")
lines(x,MSUscore, col="green")
?plot

#Question 2- Guess my number
maxGuesses= 10
random=sample(1:100, 1)
input = scan(n=1)
guess <- function(input)
for (i in 1:maxGuesses)
  {if (input > random){
  print("lower")}
  else if (input < random)
  {print("higher")}
  else {print("correct!")}}

