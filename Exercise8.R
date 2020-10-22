setwd ("/Users/kearagilligan/Desktop/Biocomputing/Biocomputing2020_Tutorial10/")
#Question 1- cumulative score over time graph

#Question 2- Guess my number
x=sample(1:100, 1)
guess <- function(y)
  {if (y > x){
  print("lower")}
  else if (y < x)
  {print("higher")}
  else {print("correct!")}}
guess (x,50)
guess (x,22)

 


multiplyByTwo<-function(x){
  if(is.numeric(x)){
    return(x*2)
  }else{
    print("x is not numeric")
  }
}