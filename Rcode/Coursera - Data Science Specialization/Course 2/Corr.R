corr <- function(directory, treshold=0) {

files_list <- list.files(directory, full.names=T)

##Construct dataframe that meets requirements
completes = complete(directory, 1:332)
completelist = subset(completes, nobs > treshold)

##Construct empty vector to hold all correlations
correlation = c()

    ##Open loop
    for (i in completelist$id) {
    
    #Loop over the number of files and calculate correlation
    file = read.csv(files_list[i])
    fileok = na.omit(file)
    newest_cor_value = cor(fileok$nitrate, fileok$sulfate)
    
    #Add latest correlation to the vector
    correlation = c(correlation, newest_cor_value)
    
    }

print(correlation)

}

corr("specdata", 100)
