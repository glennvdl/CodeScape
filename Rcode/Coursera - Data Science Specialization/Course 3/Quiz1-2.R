URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx" 
download.file(URL, destfile= "./gas.xlsx", method="curl" )

colIndex <- 18:23
rowIndex <- 7:15

dat <- read.xlsx("gas.xlsx", sheetIndex=1, rowIndex =18:23, colIndex =7:15)


sum(dat$Zip*dat$Ext,na.rm=T) 