install.packages("quantmod")
library(quantmod)

amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 

year2012 <- grepl("2012", sampleTimes)
sum(year2012) ##=250

Sub2012 <- (subset(sampleTimes,year2012))

formatted <- format(Sub2012,"%a %b %d")

formatted

sum(grepl("Mon", formatted))