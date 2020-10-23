setwd ("/Users/kearagilligan/Desktop/Biocomputing/Biocomputing2020_Tutorial10/")
#Question 1- cumulative score over time graph

#Question 2- Guess my number
maxGuesses= 10
random=sample(1:100, 1)
x = scan(n=1) # Just one item in this vector
guess <- function(input)
for (i in 1:maxGuesses)
  {if (input > random){
  print("lower")}
  else if (input < random)
  {print("higher")}
  else {print("correct!")}}
print ("I'm thinking of a number 1-100")
readline (prompt= "Guess:")

x = 0
correct = 0
incorrect = 0

# Initial lambda for our random var
correct = 2000
initial = correct

# How many guesses should we allow per number
maxGuesses = 10

while(x = sample(1:100,1)) {
  # The +1 part makes sure we never get zero, which would trigger 0's forever
  correct = rpois(1,correct) + 1
  
  # Solicit input from the user
  x = scan(n=1) # Just one item in this vector
  
  # Be nice and let the user quit. 
  if(x == Inf) {
    cat("The correct answer was", correct, "n")
    cat("You got", gotRight, "right and failed", failed, "times. Maximum allowed guesses was", maxGuesses, "and initial lambda was", initial, ". Goodbye.n")
    cat("Post your score to http://www.statisticsblog.com/2010/05/the-guessing-game-in-r-with-a-twist-of-course/#comments n")
    break
  }
  
  for(i in 1:maxGuesses) {
    if(x == correct) {
      print("correct!")
      gotRight = gotRight + 1
      break
    } else {        
      if(i == maxGuesses) {
        cat("You ran out of guesses")
      } else {
        if(x < correct) {
          cat("higher")
        } else {
          cat("lower")
        }
        
        x = scan(n=1)
      }            
    }
  }
}

?scan
