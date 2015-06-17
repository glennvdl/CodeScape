#Including family_size

#DataCamp
#Kaggle - Titanic survival analysis


# Your train and test set are still loaded in
str(train)
str(test)

# create a new train set with the new variable
train_two <- train
train_two$family_size <- train$SibSp + train$Parch + 1

# Create a new decision tree my_tree_three
my_tree_four <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked + family_size, 
                      data = train_two, method="class")

# Visualize your new decision tree
fancyRpartPlot(my_tree_four)