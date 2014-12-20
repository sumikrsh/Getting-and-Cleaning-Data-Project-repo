## This code is the analysis script to transform given input data into a tidy data
## matrix by using listed 5 steps. 

library(dplyr)

#######################################################################
## Step 1.Merges the training and the test sets to create one data set.
#######################################################################

## Read training set data
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")

## Read test set data
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")

## Read features
features <- read.table("./data/UCI HAR Dataset/features.txt")

## Combine training and test data into master data
data1 <- rbind(xtrain, xtest)
names(data1) <- as.character(features[,2])



###########################################################################
## Step 2.Extracts only the measurements on the mean and standard deviation 
## for each measurement. 
###########################################################################

## Condense the master data into only mean and std measurements
col_with_mean <- grep("-mean()",names(data1))
result1 <- data1[,col_with_mean]

col_with_std <- grep("-std()",names(data1))
result2 <- data1[,col_with_std]

xresult <- cbind(result1,result2)




#################################################################################
## Step 3.Uses descriptive activity names to name the activities in the data set
#################################################################################

## Read activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## Read activity data  
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
yresult <- rbind(ytrain, ytest)

## Replace numbers from 1 to 6 with descriptive labels
for (i in 1:nrow(yresult)) {
  
  if (yresult[i,1] == 1) {
    yresult[i,1] = as.character(activity_labels[1,2])
  } 
  if (yresult[i,1] == 2) {
    yresult[i,1] = as.character(activity_labels[2,2])
  } 
  if (yresult[i,1] == 3) {
    yresult[i,1] = as.character(activity_labels[3,2])
  } 
  if (yresult[i,1] == 4) {
    yresult[i,1] = as.character(activity_labels[4,2])
  } 
  if (yresult[i,1] == 5) {
    yresult[i,1] = as.character(activity_labels[5,2])
  }  
  if (yresult[i,1] == 6) {
    yresult[i,1] = as.character(activity_labels[6,2])
  }
}




############################################################################
## Step 4.Appropriately labels the data set with descriptive variable names. 
############################################################################

## Read subject data
subjtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subjtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subjresult <- rbind(subjtrain, subjtest)

## Add subject and activity data sets and add missing column names
result <- cbind(subjresult, yresult, xresult)
names(result)[1] <- "Subject"
names(result)[2]<- "Activity"



#################################################################################
## Step 5.From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
#################################################################################result <- arrange(result, Activity)

## Group by Subject and Activity
result1 <- group_by(result, Subject, Activity)

## Calculate mean of the feature variables
result2 <- summarise_each(result1, funs(mean))

## Clean up variable names to remove repeated Body and ()
temp <- names(result2)
temp <- gsub("BodyBody","Body",temp, ignore.case=FALSE)
temp <- gsub("\\(\\)", "",temp)
names(result2) <- temp

## Print final tidy data matrix to console
print(result2)
