URL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml " 
download.file(URL, destfile= "./balt.xml", method="curl" )

doc <- xmlTreeParse("balt.xml", useInternal = T)
rootNode <- xmlRoot(doc)

zip <- xpathSApply(rootNode, "//zipcode", xmlValue)
zipok <- zip == 21231
sum(zipok)

##or 

table(zip)[["21231"]]