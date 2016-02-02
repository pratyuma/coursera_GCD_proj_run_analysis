# Coursera Getting and Cleaning data project: run_analysis
## Introduction

This repo contains the required files for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization.

## Project Description:

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Create one R script called run_analysis.R that does the following.

-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names.
-From the data set in step 4, creates a second, independent tidy data set with the average of each -variable for each activity and each subject.

More explaination about project: https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view


## Description of raw data: 

- 'README.txt' 

- 'features_info.txt': Shows information about the variables used on the feature vector. 

- 'features.txt': List of all features. (561 variable data = colnames for X_test and X_train datasets)

- 'activity_labels.txt': Links the activity ID with their activity name. 

- train: Training set. (X_train)

- test: Test set. (X_test)

- subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- y_test/y_train: activity performed by the subjects


## Codebook: 
The CodeBook.md file explains the transformations performed and the resulting data and variables.