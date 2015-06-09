URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for" 
download.file(URL, destfile= "./Q5.for", method="curl")

Datasource <- read.fwf("./Q5.for",skip=4, widths=c(10,9,4,9,4, 9,4,9,4))

sum(Datasource[,4])

