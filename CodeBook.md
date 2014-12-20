---
title: "CodeBook for Coursera Project (Getting and Cleaning Data)"
author: "Sumithra Krishnan"
date: "Friday, December 19, 2014"
output: html_document
---

Reference
----------
Human Activity Recognition Using Smartphones Dataset
Version 1.0
---
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
For more information about this dataset contact: activityrecognition@smartlab.ws
---


Objective of this document
---------------------------
This codebook CodeBook.md contains information of the source files, transformation done on the files and description of the variables in the final tidy data. 


Source files
-------------
The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


Analysis script
----------------
run_analysis.R script has the R code that performs transformations on the .txt files provided and generates a tidy data matrix. Please refer to Readme.md to understand the transformations. 


Variables in final tidy data matrix
-----------------------------------
[1] "Subject"
------------
Range: integer from 1 to 30

Unit: None 

Description: Subject is the identifier of the person who carries out the experiments wearing a smartphone (Samsung Galaxy S II) on the waist. 30 volunteers within an age bracket of 19-48 years.

[2] "Activity"
--------------
Range: integer 1 to 6

Unit: None

Description: Six activities are as coded as below. 

1 - WALKING

2 - WALKING_UPSTAIRS

3 - WALKING_DOWNSTAIRS

4 - SITTING

5 - STANDING

6 - LAYING

Variables [3] to [81]
----------------------
Range: Normalized and bounded within [-1,1] and hence have no unit

Unit: None

Description: Features selected for come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value and std(): Standard deviation

[3] "tBodyAcc-mean-X"

[4] "tBodyAcc-mean-Y"

[5] "tBodyAcc-mean-Z"

[6] "tGravityAcc-mean-X"

[7] "tGravityAcc-mean-Y"

[8] "tGravityAcc-mean-Z"

[9] "tBodyAccJerk-mean-X"

[10] "tBodyAccJerk-mean-Y"      

[11] "tBodyAccJerk-mean-Z"

[12] "tBodyGyro-mean-X"         

[13] "tBodyGyro-mean-Y"

[14] "tBodyGyro-mean-Z"         

[15] "tBodyGyroJerk-mean-X"

[16] "tBodyGyroJerk-mean-Y"     

[17] "tBodyGyroJerk-mean-Z"

[18] "tBodyAccMag-mean"

[19] "tGravityAccMag-mean"

[20] "tBodyAccJerkMag-mean"     

[21] "tBodyGyroMag-mean"

[22] "tBodyGyroJerkMag-mean"    

[23] "fBodyAcc-mean-X"

[24] "fBodyAcc-mean-Y"          

[25] "fBodyAcc-mean-Z"           

[26] "fBodyAcc-meanFreq-X"      

[27] "fBodyAcc-meanFreq-Y"

[28] "fBodyAcc-meanFreq-Z"      

[29] "fBodyAccJerk-mean-X"

[30] "fBodyAccJerk-mean-Y"      

[31] "fBodyAccJerk-mean-Z"

[32] "fBodyAccJerk-meanFreq-X"  

[33] "fBodyAccJerk-meanFreq-Y"

[34] "fBodyAccJerk-meanFreq-Z"  

[35] "fBodyGyro-mean-X"

[36] "fBodyGyro-mean-Y"         

[37] "fBodyGyro-mean-Z" 

[38] "fBodyGyro-meanFreq-X"     

[39] "fBodyGyro-meanFreq-Y"

[40] "fBodyGyro-meanFreq-Z"     

[41] "fBodyAccMag-mean"

[42] "fBodyAccMag-meanFreq"     

[43] "fBodyAccJerkMag-mean"

[44] "fBodyAccJerkMag-meanFreq" 

[45] "fBodyGyroMag-mean"

[46] "fBodyGyroMag-meanFreq"    

[47] "fBodyGyroJerkMag-mean"

[48] "fBodyGyroJerkMag-meanFreq"

[49] "tBodyAcc-std-X"           

[50] "tBodyAcc-std-Y"           

[51] "tBodyAcc-std-Z"         

[52] "tGravityAcc-std-X"        

[53] "tGravityAcc-std-Y"        

[54] "tGravityAcc-std-Z"        

[55] "tBodyAccJerk-std-X"

[56] "tBodyAccJerk-std-Y"       

[57] "tBodyAccJerk-std-Z" 

[58] "tBodyGyro-std-X"          

[59] "tBodyGyro-std-Y"

[60] "tBodyGyro-std-Z"          

[61] "tBodyGyroJerk-std-X"    

[62] "tBodyGyroJerk-std-Y"      

[63] "tBodyGyroJerk-std-Z"

[64] "tBodyAccMag-std"          

[65] "tGravityAccMag-std"

[66] "tBodyAccJerkMag-std"      

[67] "tBodyGyroMag-std"

[68] "tBodyGyroJerkMag-std"     

[69] "fBodyAcc-std-X"

[70] "fBodyAcc-std-Y"           

[71] "fBodyAcc-std-Z"

[72] "fBodyAccJerk-std-X"       

[73] "fBodyAccJerk-std-Y" 

[74] "fBodyAccJerk-std-Z"       

[75] "fBodyGyro-std-X"

[76] "fBodyGyro-std-Y"          

[77] "fBodyGyro-std-Z"    

[78] "fBodyAccMag-std"          

[79] "fBodyAccJerkMag-std"

[80] "fBodyGyroMag-std"         

[81] "fBodyGyroJerkMag-std" 
