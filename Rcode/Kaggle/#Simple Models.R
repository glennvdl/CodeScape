#Simple Models

#DataCamp
#Kaggle - Titanic survival analysis


#Assigning the training set to a variable
train <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))
  
#Assigning the test set to a variable
test <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))
  
# Passengers that survived vs passengers that passed away

##Expressed in absolute numbers
table(train$Survived)
##Expressed in percentages
prop.table(table(train$Survived))

# Males & females that survived vs males & females that passed away

##In absolute numbers
table(train$Sex,train$Survived)
##In percentages (1 indicates row wise comparisons, 2 indicates column wise comparisons)
prop.table(table(train$Sex,train$Survived),1)


# Create the column child, and indicate whether child or no child
train$Child <- NA
train$Child[train$Age < 18] <- 1
train$Child[train$Age >= 18] <- 0

# Two-way comparison
table(train$Child,train$Survived)
prop.table(table(train$Child,train$Survived),1)