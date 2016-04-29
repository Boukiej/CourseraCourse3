#About the codebook

This codebook contains descriptive information about the used data and script in the course "Getting and Cleaning data" from coursera.

The raw data contains 4 sets of data:

- Subject
- Activity
- Features
- Measurements

The raw data is download from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
More information about the data:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The tidydata contains 1 set:

- Measurement averages

##About the raw data: Subject
Number of columns: 1        
This set contains an integer ID called "subject" for each respondent in the dataset


##About the raw data: Activity
Number of columns: 2       
This set constains two variables and 6 rows:
1: an integer ID for each activity
2: an string containing the desciption of the activity

Possible values of (2)       
Walking
Walking Upstairs
Walking Downstairs
Sitting
Standing

##About the raw data: Activity
Number of columns: 2      
1: an integer ID for each activity
2: a string containing 561 different values as 561 different measurements

##About the raw data: Measurements
Number of columns: 561  
Dataset containing the actual measurements      
    

##About the tidy data: Measurement averages            
Number of columns: 68          
This dataset contains for every SubjectID - Activity combination the averages of each measurement as described in "About the raw data: Measurements" containing the standard deviation or the mean.        

Column names:                    
SubjectID
Activity
tBodyAcc-mean-X
tBodyAcc-mean-Y
tBodyAcc-mean-Z
tBodyAcc-std-X
tBodyAcc-std-Y
tBodyAcc-std-Z
tGravityAcc-mean-X
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-mean-X
tBodyAccJerk-mean-Y
tBodyAccJerk-mean-Z
tBodyAccJerk-std-X
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-mean-X
tBodyGyro-mean-Y
tBodyGyro-mean-Z
tBodyGyro-std-X
tBodyGyro-std-Y
tBodyGyro-std-Z
tBodyGyroJerk-mean-X
tBodyGyroJerk-mean-Y
tBodyGyroJerk-mean-Z
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y
tBodyGyroJerk-std-Z
tBodyAccMag-mean
tBodyAccMag-std
tGravityAccMag-mean
tGravityAccMag-std
tBodyAccJerkMag-mean
tBodyAccJerkMag-std
tBodyGyroMag-mean
tBodyGyroMag-std
tBodyGyroJerkMag-mean
tBodyGyroJerkMag-std
fBodyAcc-mean-X
fBodyAcc-mean-Y
fBodyAcc-mean-Z
fBodyAcc-std-X
fBodyAcc-std-Y
fBodyAcc-std-Z
fBodyAccJerk-mean-X
fBodyAccJerk-mean-Y
fBodyAccJerk-mean-Z
fBodyAccJerk-std-X
fBodyAccJerk-std-Y
fBodyAccJerk-std-Z
fBodyGyro-mean-X
fBodyGyro-mean-Y
fBodyGyro-mean-Z
fBodyGyro-std-X
fBodyGyro-std-Y
fBodyGyro-std-Z
fBodyAccMag-mean
fBodyAccMag-std
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std
fBodyBodyGyroMag-mean
fBodyBodyGyroMag-std
fBodyBodyGyroJerkMag-mean:
fBodyBodyGyroJerkMag-std


##About the script:

I used 5 steps to get, clean, merge the raw data and generate the tidydata
- Step 0: Libraries
- Step 1: getting and merging data
- Step 2: extracting mean and sd-data
- Step 3: set desciptive names for activities
- Step 4: Appropriate labels for variable names
- Step 5: The average of each variable for each activity and each subject

More detailed steps are provided in the run_analysis.R script
