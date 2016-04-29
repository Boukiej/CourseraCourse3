#Getting and Cleaning Data: Course Project

This repository contains the files for the course project of the 'Getting and Cleaning" course from Coursera. I will discuss the raw data, the script, the derived tidy dataset following the instructions and the codebook.

# About the raw data
The data is downloaded from: 
https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project 

Information about the dataset can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original quote from the website:
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



# About the script
In the script uses the following data from the original set:
X_test.txt
X_train.txt
Y_test.txt
Y_train.txt
subject_test.txt
subject_train.txt
features.txt
activity_labels.txt

Performing the following steps the script generates a clean dataset by cleaning and merging the raw dataset
####### Step 0: Libraries #######
####### Step 1: getting and merging data #######
####### Step 2: extracting mean and sd-data #######
####### Step 3: set desciptive names for activities #######
####### Step 4: Appropriate labels for variable names #######
####### Step 5: The average of each variable for each activity and each subject #######

# About the tidy data
Step 5 of the script generates a tidy dataset containing the averages of the measuredata for all subject-activity combinations

# About the codebook
The codebook explains the performed steps in the analyses from getting to cleaning to export the tidy dataset


