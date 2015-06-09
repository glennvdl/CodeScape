URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
download.file(URL, destfile= "./Data/Q4Q4-1.csv", method="curl")
GDP <- read.csv("./Data/Q4Q4-1.csv", skip=4,nrows=190)

URL2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv" 
download.file(URL2, destfile= "./Data/Q4Q4-2.csv", method="curl")
educ <- read.csv("./Data/Q4Q4-2.csv")


head(GDP)

head(educ)

mergeddata = merge(GDP,educ,by.x="X",by.y="CountryCode",all=T)


f=mergeddata[grep("[Ff]iscal",mergeddata[["Special.Notes"]]),]
length(grep("[Jj]une",f[["Special.Notes"]]))

