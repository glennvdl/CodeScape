#Anonymous functions
#DataCamp
#DataCamp - Intermediate R
#DataCamp - Intermediate R - Lapply

# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

names <- lapply(split_low, function(x) { x[1] })

years <- lapply(split_low, function(x) { x[2] })