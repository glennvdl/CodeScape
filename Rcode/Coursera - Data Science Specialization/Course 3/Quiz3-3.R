##Load GDP data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url, destfile= "./Data/Q3Q3-1.csv", method="curl")
gdpdata <- read.csv("./Data/Q3Q3-1.csv",header=F, skip=5, nrows=190)


##Load educational data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv "
download.file(url, destfile= "./Data/Q3Q3-2.csv", method="curl")
educationdata <- read.csv("./Data/Q3Q3-2.csv", header=T, sep=",")

mergeddata = merge(gdpdata,educationdata,by.x="V1",by.y="CountryCode",all=T)

inters <- intersect(gdpdata$V1,educationdata$CountryCode)
length(inters)


levels(gdpdata$V1)
educationdata$CountryCode

x <- mergeddata[order(-mergeddata$V2),]
x[13,]

##Question4 - None working lines
OECD <- mergeddata[mergeddata$Income.Group=="High income: OECD","V2"]
mean(as.integer(na.omit(OECD)))

OECD2 <- mergeddata[mergeddata$Income.Group=="High income: nonOECD","V2"]
mean(as.integer(na.omit(OECD2)))


##Wroking lines
OECD3 <- x[x$Income.Group=="High income: OECD","V2"]
mean(na.omit(OECD3))

OECD4 <- x[x$Income.Group=="High income: nonOECD","V2"]
mean(na.omit(OECD4))

class(mergeddata$V2)
class(x$V2)


# non OECD
mean(mergeddata[mergeddata$Income.Group=='High income: nonOECD',]$V2)

##Questions 5

install.packages("Hmisc")
library(Hmisc)

x$GDPGroups <- cut2(x$V2,g=5)
x$GDPGroups

table(x$GDPGroups,x$Income.Group)
