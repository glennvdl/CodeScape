##STEP0 - IMPORT DATA SETS

##test data
x_test <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./UCI HAR Dataset/train/subject_train.txt")

##train data
y_train <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_train <- read.table("./UCI HAR Dataset/test/subject_test.txt")

##STEP01 - MERGING DATA

##Merging data for X
x_full <- rbind(x_test,x_train)
##Name columns for x_full based on features.txt file 
x_names <- read.table("./Project/UCI HAR Dataset/features.txt")
colnames(x_full) <- x_names$V2

##Merging data for Y
y_full <- rbind(y_test,y_train)

##Merging data for subject
subject_full <- rbind(subject_test, subject_train)


##STEP02 - EXTRACT (FROM THE EXISTING SET) ALL MEANS & STANDARD DEVIATIONS
##Focus on x_full - All colnames that should be included contain mean or std
##Which columns are the target?
target_cols <- grepl("mean",colnames(x_full)) | grepl("std",colnames(x_full))

##Select these columns in the selectors ([]) - Subsetting doesn't seem to work?
target_x <- x_full[,target_cols]

##STEP03 + STEP04
full <- cbind(y_full, target_x)
##Change name "V1" to descriptive name "Activity"
names(full)[1] <- "Activity"
##There are 6 values, which makes it basically a factor - Transform this column to a factor
full[,1] <- as.factor(full[,1])
##Check which level there are
levels(full$Activity)
##Redefine levels 
levels(full$Activity)[1] <- "WALKING"
levels(full$Activity)[2] <- "WALKING_UPSTAIRS"
levels(full$Activity)[3] <- "WALKING_DOWNSTAIRS"
levels(full$Activity)[4] <- "SITTING"
levels(full$Activity)[5] <- "STANDING"
levels(full$Activity)[6] <- "LAYING"

full[1:10,1:4]

##Add id's = Actually subject_full
complete <- cbind(subject_full,full)
head(complete[,1:4])
##Change name of "V1" (came with subjectID's) to "Subject"
names(complete)[1] <- "Subject"


##STEP05 - NEW TIDY DATASET - (AVG VAR/PER ACTIVITY/PER VARIABLE)

library(reshape2)

melted<- melt(complete,id.vars=c("Subject","Activity"))
tidy <- dcast(melted, Subject + Activity ~ ..., mean)

write.table(tidy,"tidy_data.txt",row.name=F) 


names(tidy)

setwd()

