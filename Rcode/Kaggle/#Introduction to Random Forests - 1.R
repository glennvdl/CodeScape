#Introduction to Random Forests - 1

#DataCamp
#Kaggle - Titanic survival analysis

#In layman terms, the Random Forest technique handles the overfitting problem you faced with decision trees. 
#It grows multiple (very deep) classification trees using the training set. At the time of prediction, each tree is 
#used to come up with a prediction and every outcome is counted as a vote. 
#For example, if you have trained 3 trees with 2 saying a passenger in the test set will survive and 1 says he will not, 
#the passenger will be classified as a survivor. This approach of overtraining trees, but having the majority's vote count as 
#the actual classification decision, avoids overfitting.

# All data, both training and test set
all_data

# Passenger on row 62 and 830 do not have a value for embarkment. 
# Since many passengers embarked at Southampton, we give them the value S.
# We code all embarkment codes as factors.
all_data$Embarked[c(62,830)] = "S"
all_data$Embarked <- factor(combi$Embarked)

# Passenger on row 1044 has an NA Fare value. Let's replace it with the median fare value.
all_data$Fare[1044] <- median(combi$Fare, na.rm=TRUE)

# How to fill in missing Age values?
# We make a prediction of a passengers Age using the other variables and a decision tree model. 
# This time you give method="anova" since you are predicting a continuous variable.
predicted_age <- rpart(Age ~ Pclass + Sex + SibSp + Parch + Fare + Embarked + Title + family_size,
                       data=all_data[!is.na(all_data$Age),], method="anova")
all_data$Age[is.na(all_data$Age)] <- predict(predicted_age, all_data[is.na(all_data$Age),])

# Split the data back into a train set and a test set
train <- all_data[1:891,]
test <- all_data[892:1309,]

#One more important element in Random Forest is randomization to avoid the creation of the same 
#tree from the training set. You randomize in two ways (i) by taking a randomized sample of the rows in your 
#training set, and (ii) by only working with a limited and changing number of the available variables for every node of the tree. 
#Now it's time to do your first Random Forest analys