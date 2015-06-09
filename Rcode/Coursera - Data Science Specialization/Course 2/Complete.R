complete <- function(directory, id =1:332) {
  
  ##Create a list of filenames
  files_list <- list.files(directory, full.names=T)
  
  ##Create an empty vector to store all id's  
  ids = c()
  completecases = c()
  ids_name <- "id"
  completecases_name <- "nobs"
  
  ##Open Loop
  for (i in id) {
    
      ##Stores all ID's  
      ids = c(ids, i)
    
      ##Stores all incomplete cases
      y=sum(complete.cases(read.csv(files_list[i])))
      completecases=c(completecases,y)
    
      ##Close loop
    }
  
  ##Combine evenuything in a dataframe including names + printing
  
  df <- data.frame(ids,completecases)
  names(df) <- c(ids_name,completecases_name)
  print(df)
  
  
##Close formula
}

complete("specdata")


