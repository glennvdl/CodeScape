##Load data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url, destfile= "./Data/Q4Q1.csv", method="curl")
Community <- read.csv("./Data/Q4Q1.csv")

x <- names(Community)
strsplit(x[123],"wgtp")



