---
title: "CodeBook"
author: "Brendan P Tinoco"
date: "6/28/2020"
output: html_document
---

## Variables ##

"Mean"" indicates the arithmetic mean of a measurement.
"STD" indicates the standard deviation of a measurement.

All variables are the average of that variable grouped by subject and activity, totaling 180 groups.

 [1] "subject"                       "activity"                     
 [3] "Time-BodyAcc-Mean-X"           "Time-BodyAcc-Mean-Y"          
 [5] "Time-BodyAcc-Mean-Z"           "Time-GravityAcc-Mean-X"       
 [7] "Time-GravityAcc-Mean-Y"        "Time-GravityAcc-Mean-Z"       
 [9] "Time-BodyAccJerk-Mean-X"       "Time-BodyAccJerk-Mean-Y"      
[11] "Time-BodyAccJerk-Mean-Z"       "Time-BodyGyro-Mean-X"         
[13] "Time-BodyGyro-Mean-Y"          "Time-BodyGyro-Mean-Z"         
[15] "Time-BodyGyroJerk-Mean-X"      "Time-BodyGyroJerk-Mean-Y"     
[17] "Time-BodyGyroJerk-Mean-Z"      "Time-BodyAccMag-Mean"         
[19] "Time-GravityAccMag-Mean"       "Time-BodyAccJerkMag-Mean"     
[21] "Time-BodyGyroMag-Mean"         "Time-BodyGyroJerkMag-Mean"    
[23] "Freq-BodyAcc-Mean-X"           "Freq-BodyAcc-Mean-Y"          
[25] "Freq-BodyAcc-Mean-Z"           "Freq-BodyAccJerk-Mean-X"      
[27] "Freq-BodyAccJerk-Mean-Y"       "Freq-BodyAccJerk-Mean-Z"      
[29] "Freq-BodyGyro-Mean-X"          "Freq-BodyGyro-Mean-Y"         
[31] "Freq-BodyGyro-Mean-Z"          "Freq-BodyAccMag-Mean"         
[33] "Freq-BodyBodyAccJerkMag-Mean"  "Freq-BodyBodyGyroMag-Mean"    
[35] "Freq-BodyBodyGyroJerkMag-Mean" "Time-BodyAcc-STD-X"           
[37] "Time-BodyAcc-STD-Y"            "Time-BodyAcc-STD-Z"           
[39] "Time-GravityAcc-STD-X"         "Time-GravityAcc-STD-Y"        
[41] "Time-GravityAcc-STD-Z"         "Time-BodyAccJerk-STD-X"       
[43] "Time-BodyAccJerk-STD-Y"        "Time-BodyAccJerk-STD-Z"       
[45] "Time-BodyGyro-STD-X"           "Time-BodyGyro-STD-Y"          
[47] "Time-BodyGyro-STD-Z"           "Time-BodyGyroJerk-STD-X"      
[49] "Time-BodyGyroJerk-STD-Y"       "Time-BodyGyroJerk-STD-Z"      
[51] "Time-BodyAccMag-STD"           "Time-GravityAccMag-STD"       
[53] "Time-BodyAccJerkMag-STD"       "Time-BodyGyroMag-STD"         
[55] "Time-BodyGyroJerkMag-STD"      "Freq-BodyAcc-STD-X"           
[57] "Freq-BodyAcc-STD-Y"            "Freq-BodyAcc-STD-Z"           
[59] "Freq-BodyAccJerk-STD-X"        "Freq-BodyAccJerk-STD-Y"       
[61] "Freq-BodyAccJerk-STD-Z"        "Freq-BodyGyro-STD-X"          
[63] "Freq-BodyGyro-STD-Y"           "Freq-BodyGyro-STD-Z"          
[65] "Freq-BodyAccMag-STD"           "Freq-BodyBodyAccJerkMag-STD"  
[67] "Freq-BodyBodyGyroMag-STD"      "Freq-BodyBodyGyroJerkMag-STD" 

## Data Explanation ##

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
