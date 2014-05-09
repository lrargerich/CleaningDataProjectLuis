Human Activity Recognition compact Datasets
========================================================

This dataset represents a sub-set of the original raw dataset.
The variables that were picked are those that represent the sensor data
and can be used for machine learning or statistical purposes.
Some variables that are computable from the sensor variables were excluded.
If you need to use variables that were in the raw dataset but not here
please modify run_analysis.R to your needs.

ATTRIBUTES FROM THE RAW DATA INCLUDED IN THIS DATASET:
-----------------------------------------------------

- tBodyAcc-XYZ  renamed as body_acceleration_xyz(mean|std)
- tGravityAcc-XYZ renamed as gravity_acceleration_xyz(mean|std)
- tBodyAccJerk-XYZ renamed as body_acceleration_jerk_xyz(mean|std)
- tBodyGyro-XYZ renamed as body_gyro_xyz(mean|std)
- tBodyGyroJerk-XYZ renamed as body_gyro_jerk_xyz(mean|std)

ATTRIBUTES IN THE RAW DATA EXCLUDED FROM THE DATASET:
----------------------------------------------------

Inertial Signals were ignored

From the RAW files the following attributes were NOT selected for this dataset:
The Fast Fourier Transform of the Signals
The Magnitude of the signals (euclidean norm)

- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The averaging of the signals in a time window were also excluded:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

DESCRIPTION ABOUT HOW THIS DATASET WAS OBTAINED FROM THE RAW DATA:
-----------------------------------------------------------------

1. The attributes from the train (x_train.txt) and test (x_test.txt) datasets were selected as described before
2. The subject column was added from subject_train.txt and subject_test.txt
3. The activities were converted from numbers to text using this table:
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING
4. The test and train datasets are merged into har_dataset
5. An aggregate dataset (har_averages) was created averaging each variable for 
each subject and activity