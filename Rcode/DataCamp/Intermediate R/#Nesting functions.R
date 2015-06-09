#Nesting functions
#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Functions

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if(num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
interpret_all <- function(vector, return_value = TRUE) {
  popular_sum = 0
  for (element in vector) {
    popular_sum = popular_sum + interpret(element)
    }
  if (return_value) {
    return(popular_sum)
  } else {
    return(NULL)
  }
}
# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)