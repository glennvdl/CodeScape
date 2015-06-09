url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

download.file(url, destfile= "./Data/Q3Q1.csv", method="curl")

Agriculture <- read.csv("./Data/Q3Q1.csv", header=T, sep=",")

head(Agriculture)

Agriculture$agricultureLogical <- ifelse(Agriculture$ACR == 3 & Agriculture$AGS == 6, T, F)

which(Agriculture$agricultureLogical)

