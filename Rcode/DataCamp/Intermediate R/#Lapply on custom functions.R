#Lapply on custom functions
#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Lapply

# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(vector) {
  return(vector[1])
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
# Write function select_first()
select_second <- function(vector) {
  return(vector[2])
}

# Apply select_second() over split_low: years
years <- lapply(split_low,select_second)

#Create generic formula with selector (el)

# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Replace the select_*() functions by a single function: select_el
select_el <- function(x,el) {
  x[el]
}


# Call the select_el() function twice on split_low: names and years
names <- lapply(split_low, select_el, el=1)
years <- lapply(split_low, select_el, el=2)

