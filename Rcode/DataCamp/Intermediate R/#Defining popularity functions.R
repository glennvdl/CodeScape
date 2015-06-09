#Popular
#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Functions
#The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(x) {
  if(x > 15) {
    print("You're popular!")
    return(x)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice

interpret(linkedin)
interpret(facebook[2])