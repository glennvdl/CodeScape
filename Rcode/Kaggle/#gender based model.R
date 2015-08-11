#Assigning the training set to a variable
train <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))

#Assigning the test set to a variable
test <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))


my_solution <- data.frame(PassengerId = test$PassengerId,Survived = test$Survived)

my_solution

test$Survived <- 0

test$Survived[test$Sex == 'female'] <- 1

write.csv(my_solution, file = "gender_model_entry.csv", row.names = FALSE)