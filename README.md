GettingCleaningDataCourseProject
================================

This script takes input data from the UCI HAR Dataset that can be downloaded at the address below.
User must set the working directory to the UCI HAR folder before running the script.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script does a number of things:
    1) Downloads both test and train data and combines them into one data set
    2) Adds descriptive column names to the set
    3) Extracts just those columns which contain mean or standard deviation values
    4) Adds values for the activities that were being performed during each observation (record)
    5) Creates a new tidy data set called 'tidydata' which contains means for each subject/activity pair
    

