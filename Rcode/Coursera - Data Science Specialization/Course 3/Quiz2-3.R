fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileURL, destfile= "./Quiz2test2.csv", method="curl", sep=",")

acs <- read.csv("./Quiz2test2.csv", header=T, sep=",")

colnames(acs)
a <- unique(acs$AGEP)
length(a)

sqldf("select distinct AGEP from acs")