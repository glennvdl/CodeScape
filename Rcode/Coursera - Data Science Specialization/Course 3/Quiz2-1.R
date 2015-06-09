oauth_endpoints("github")

myapp <- oauth_app("github",key="8c82c6eb9c0c7ea15b4a",secret="b78face90c18dd6987d9f5273f5ca077ffa9d041")
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

req <- GET("https://api.github.com/users/jtleek/repos")

jsonlala <- jsonlite::fromJSON(toJSON(req))




##Breaking point

jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")

df <- as.data.frame(jsonData)
df[5,45]

names(jsonData)

## name is second name element

jsonData$name

##D data sharing is 5th element in JSON file
##Retrieve 5th element in created_at column

jsonData$created_at[5]


##Or create subset

test <- subset(jsonData, jsonData$name == "datasharing")

test
