Data Descriptions
==============

The output of run_analysis.r includes a data frame called ‘tidydata’, which is composed of the following fields (and their types in parentheses):

Subject (integer):  1-30 identifies the subject of the recorded observation
ActivityNames (string):  Description of activity being performed in the observation
activitycodes (numeric):  1-6 numerically corresponds to a string in ActivityNames

The remaining 66 fields contain numeric values representing the mean of all observations from the full combined data set (of ‘test’ and ‘train’ individual data sets from the parent UCI HAR Dataset) for each Subject and activity (as represented by either ActivityNames or activity codes fields) pair. For example, in the combined dataset (represented as ‘comb’ data frame in the output of run_analysis.r) of all ‘test’ and ‘train’ observations, there are multiple observations of Subject=5 and ActivityNames=LAYING. In tidy data there is only one observation (row) where Subject=5 and ActivityNames=LAYING, and values in remaining fields represent the mean of all such observations from the full (comb) dataset.

These remaining 66 fields in ‘tidydata’ come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

mean(): Mean value
std(): Standard deviation

Fields names are a combination of signal, variable, and direction, separated by hyphen. For example “tBodyAcc-mean()-X”.


> Written with [StackEdit](https://stackedit.io/).