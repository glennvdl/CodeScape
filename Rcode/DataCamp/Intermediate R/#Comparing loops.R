#Comparing loops
#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Loops

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for(line in linkedin) {
  print(line)
}

# Loop version 2
for(i in 1:length(linkedin)) {
  print(linkedin[i])
}

# Comparing loops within lists
# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for(item in nyc) {
  print(item)
}

# Loop version 2
for(i in 1:length(nyc)) {
  print(nyc[[i]])
}

#Looping over matrices
# The tic-tac-toe matrix has already been defined for you
ttt <- matrix(c("O", NA, "X", "NA", "O", NA, "X", "O", "X"), nrow = 3, ncol = 3)

# define the double for loop
for(i in 1:nrow(ttt)) {
  for(j in 1:ncol(ttt)) {
    print(paste("on row", i,"and column", j,"the board contains", ttt[i,j]))
    }
}