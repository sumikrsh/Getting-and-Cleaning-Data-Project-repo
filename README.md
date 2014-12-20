---
title: "Readme"
author: "Sumithra Krishnan"
date: "Friday, December 19, 2014"
output: html_document
---

Objective of document
----------------------

This document explains how the code run_analysis.R works. 

Objective of the assignment
----------------------------

To create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Also refer to the CodeBook.md to understand details about the variables. 

Outputs of the assignment
-------------------------
- Tidy data matrix - In order to look at the final tidy data uploaded, please use command - read.table(filepath, header = TRUE)

- Files run_analysis.R, Readme.md and CodeBook.md are available in https://github.com/sumikrsh/Getting-and-Cleaning-Data-Project-repo. 


Structure of the code
----------------------
#######################################################################
## Step 1.Merges the training and the test sets to create one data set
#######################################################################

[Prerequisite: 
The zip file in 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is downloaded to the working folder in my machine and folders are extracted in  
data\UCI HAR Dataset folder. ]

Using read.table command, training and test data are read into R from X_train.txt and X_test.txt. 
561 features are read from features.txt to get feature matrix. 
Combine training and test data into master X data. 
Use feature matrix to label 561 columns of the master X data.

Output of this step: Master X data - 10299 x 561 matrix. 

####################################################################################
## Step 2.Extracts only the measurements on the mean and standard deviation for each measurement
####################################################################################

Condense the master X data into only mean and std measurements. 
Match for "mean" and "std" using grep and thereby excluding other measurements.
PLEASE NOTE: Mean() and MeanFreq() both variables are considered as variables. 

Output of this step: Condensed X data - 10299 x 79 matrix 

#################################################################################
## Step 3.Uses descriptive activity names to name the activities in the data set
#################################################################################

Read activity labels from activity_labels.txt to get list of 6 activities.  
Read activities in the observations of the subjects from y_train.txt and y_test.txt. 
Replace numbers from 1 to 6 with descriptive labels.

Output of this step - Activity data - 10299 x 1 matrix

############################################################################
## Step 4.Appropriately labels the data set with descriptive variable names
############################################################################

Read subject id data from subject_train.txt and subject_test.txt. 
Add subject id data and activity data from step 3 to X data from step 2 to get result matrix which is 10299 x 81 matrix. Add appropriate column names for subject and activity. 

Output of this step - Result matrix with subject and activity labels and all variable column labels - 10299 x 81 matrix

#################################################################################
## Step 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#################################################################################

Group by Subject and Activity using group_by function of dplyr package.
Calculate mean of the feature variables using summarise_each function.
Clean up variable names to remove "BodyBody" and "()" from variable names.

Output of this step - Result matrix with subject and activity grouped and average of each variable for each activity and each subject - 180 x 81 matrix 

