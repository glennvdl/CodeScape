fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL, destfile= "./data.csv", method="curl")

survey <- read.csv("data")
head(survey)
names(survey)
survey

Valparam <- (subset(survey, survey$VAL==24))
nrow(Valparam)

