install.packages("jpeg")
library(jpeg)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(url, destfile= "./Data/Q3Q2.jpg", method="curl")

JPEG <- readJPEG("./Data/Q3Q2.jpg","T")

quantile(JPEG,probs=c(0.30,0.80))

?quantile()