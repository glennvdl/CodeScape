#Assigning the training set to a variable
train <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))

#Assigning the test set to a variable
test <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))

my_tree <- rpart(formula = Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class")
my_prediction <- predict(my_tree, test, type = "class")

my_solution <- data.frame(PassengerId = test$PassengerId, Survived = my_prediction)


write.csv(my_solution, file = "first_r_entry.csv", row.names = FALSE)

test

?rpart()