URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
download.file(URL, destfile= "./Data/Q4Q2.csv", method="curl")
GDP <- read.csv("./Data/Q4Q2.csv", skip= 4, nrows=190)
z <- gsub(",","",GDP$X.4)
mean(as.numeric(z))


