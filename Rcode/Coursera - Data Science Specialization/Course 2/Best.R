
best <- function(state, outcome) {
  
  ##First read in the data
  dataset <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  ##Create outcome validation vector
  outcomelist <- c("heart attack", "heart failure", "pneumonia")
  ##Validate outcome input 
  if (outcome %in% outcomelist == F) { stop("invalid outcome")
  }
  
  ##Create state validation vector
  statelist <- unlist(dataset[,7])
  if (state %in% statelist == F) { stop("invalid state")                              
  }
  
  ##New dataframe
  dataset2 <- dataset[,c(2, 7, 11, 17, 23)]
  
  ##Rename new dataframe
  colnames(dataset2)[1] = "name"
  colnames(dataset2)[2] = "state"
  colnames(dataset2)[3] = "heart attack"
  colnames(dataset2)[4] = "heart failure"
  colnames(dataset2)[5] = "pneumonia"
  
  
  ##Select part of dataframe by using subset of the data we need based on 
  ##formula input
  dataset3 <- dataset2[dataset2$state==state & dataset2[outcome] != 'Not Available', ]
  dataset4 <- dataset3[,outcome]
  answerID <- which.min(dataset4)
  result <- dataset3[answerID,"name"]
  print(result)
}

best("MD", "heart attack")
