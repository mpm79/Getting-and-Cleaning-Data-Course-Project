The data used in file run_analysis.R is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones provided by the Human Activity Recognition Using Smartphones Dataset collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory.

From the dataset README file:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz."

The training and test sets were merged to create one dataset. For each record, 561 features were measured. Measurements for the 66 mean and standard deviation variables were retained in the tidy dataset created in run_analysis.R. 

"tBodyAcc.mean...X"           "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"          
"tBodyAcc.std...X"            "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
"tGravityAcc.mean...X"        "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"       
"tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"        
"tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"      
"tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
"tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
"tBodyGyro.std...X"           "tBodyGyro.std...Y"           "tBodyGyro.std...Z"          
"tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"     
"tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
"tBodyAccMag.mean.."          "tBodyAccMag.std.."           "tGravityAccMag.mean.."      
"tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."      
"tBodyGyroMag.mean.."         "tBodyGyroMag.std.."          "tBodyGyroJerkMag.mean.."    
"tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
"fBodyAcc.mean...Z"           "fBodyAcc.std...X"            "fBodyAcc.std...Y"           
"fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
"fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"       
"fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
"fBodyGyro.mean...Z"          "fBodyGyro.std...X"           "fBodyGyro.std...Y"          
"fBodyGyro.std...Z"           "fBodyAccMag.mean.."          "fBodyAccMag.std.."          
"fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."   "fBodyBodyGyroMag.mean.."    
"fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.." 

The four variables in the final dataset are:

1) subject: identifies the subject, 1-30
2) activity: activity associated with the measurement (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3) variable: variable being measured
4) value: the value of the measurement

The records in the dataset have been sorted, first by subject and then by activity, in the final dataset.

