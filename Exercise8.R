setwd ("/Users/kearagilligan/Desktop/Biocomputing/Biocomputing2020_Tutorial10/")
#Question 1- cumulative score over time graph

#Question 2- Guess my number
print ("I'm thinking of a number 1-100")
maxGuesses= 10
x=sample(1:100, 1)
guess <- function(y)
for (i in 1:maxGuesses)
  {if (y > x){
  print("lower")}
  else if (y < x)
  {print("higher")}
  else {print("correct!")}}
readline(prompt= "Guess:")

