---
title: "CodeBook.md"
author: "S Nenning"
date: "26 March 2018"
output: html_document
---


# CodeBook: Average mean and standard deviation of test and train data sets

- file name: train_test_avg_mean_sd.txt
- file Format: | limited text file; ( | = pipe)
- data source: combined data set of 'train' and 'test' data sets

## content:
1. List of objects of data set file
    - Names of mean and standard deviation measurements have been cleansed by removing characters ,()_ from names of original data set.
    - Measurement values are averages of all data set records for subject and activity.
    
    - Definitions of abbreviations used in object names.
        -    t:	    measurement obained from time domian signal
        -    f:	    measurement in frequency derived from Fast Fourier Transform (FFT)
        -    Body:	signal component estimated excluding earth gravity
        -    Gravity:	signal component captured which includes earth gravity
        -    Acc:	    3-axial linear acceleration signal captured with accelerometer
        -    Gryro:	3-axial linear velocity signal captured with gyroscope
        -    Jerk:	Jerk signals obatined from body linear acceleration and angular velocity
        -    Mag:	    magnitude of signals calculated using the Euclidean norm
        -    Mean:	statistical Mean of signal values
        -    Std:	    statistical Standard Deviation of signal values

    
2. Background information to study performed by Smartlab. 
    - Study: Human Activity Recognition Using Smartphones Dataset
    - Information copied from Readme file.
    - Use of data sets is acknowledged to individuals referenced under section license.

# 1. List of objects of data set file

subject: (integer)

    - Subject (= person) performing the activity, whos measurements have been captured.
        - 1..30 .number of the subject performing actiivity; numbers from 1 to 30

activity: (character)

    -Activity performed by subject
        - LAYING                  .subject is lying 
        - SITTING                 .subject is sitting 
        - STANDING                .subject is standing
        - WALKING                 .subject is walking
        - WALKING_DOWNSTAIRS      .subject is walking downstairs
        - WALKING_UPSTAIRS        .subject is walking upstairs

tBodyAccMeanX: (numeric)
        
    - Average Mean body acceleration time signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccMeanY: (numeric)
        
    - Average Mean body acceleration time signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccMeanZ: (numeric)
        
    - Average Mean body acceleration time signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
tGravityAccMeanX: (numeric)
        
    - Average Mean body and gravity acceleration time signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
tGravityAccMeanY: (numeric)
        
    - Average Mean body and gravity acceleration time signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
tGravityAccMeanZ: (numeric)
        
    - Average Mean body and gravity acceleration time signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkMeanX: (numeric)
        
    - Average Mean body acceleration time Jerk signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkMeanY: (numeric)
        
    - Average Mean body acceleration time Jerk signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkMeanZ: (numeric)
        
    - Average Mean body acceleration time Jerk signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyGyroMeanX: (numeric)
        
    - Average Mean body velocity time signal value for subject and activity in X axis from gyroscope.
        - unit is radians/second
        
tBodyGyroMeanY: (numeric)
        
    - Average Mean body velocity time signal value for subject and activity in Y axis from gyroscope.
       - unit is radians/second
            
tBodyGyroMeanZ: (numeric)
        
    - Average Mean body velocity time signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkMeanX: (numeric)
        
    - Average Mean body velocity time Jerk signal value for subject and activity in X axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkMeanY: (numeric)
        
    - Average Mean body velocity time Jerk signal value for subject and activity in Y axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkMeanZ: (numeric)
        
    - Average Mean body velocity time Jerk signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second.
        
tBodyAccMagMean: (numeric)
        
    - Average Mean body acceleration time signal magnitude value from accelerometer.
        - unit is standard gravity unit 'g'
        
tGravityAccMagMean: (numeric)
        
    - Average Mean body and gravity acceleration time signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkMagMean: (numeric)
        
    - Average Mean body acceleration time Jerk signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyGyroMagMean: (numeric)
        
    - Average Mean body velocity time signal magnitudevalue for subject and activity from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkMagMean: (numeric)
        
    - Average Mean body velocity time Jerk signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second
        
fBodyAccMeanX: (numeric)
        
    - Average Mean body acceleration frequency signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccMeanY: (numeric)
        
    - Average Mean body acceleration frequency signal value for subject and activity in Y axis from accelerometer
       -  unit is standard gravity unit 'g'
        
fBodyAccMeanZ: (numeric)
        
    Average Mean body acceleration frequency signal value for subject and activity in Z axis from accelerometer
        unit is standard gravity unit 'g'
        
fBodyAccJerkMeanX: (numeric)
        
    - Average Mean body acceleration frequency Jerk signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccJerkMeanY: (numeric)
        
    - Average Mean body acceleration frequency Jerk signal value for subject and activity in Y axis from accelerometer
       - unit is standard gravity unit 'g'
        
fBodyAccJerkMeanZ: (numeric)
        
    - Average Mean body acceleration frequency Jerk signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyGyroMeanX: (numeric)
        
    - Average Mean body velocity frequency signal value for subject and activity in X axis from gyroscope.
        - unit is radians/second
        
fBodyGyroMeanY: (numeric)
        
    - Average Mean body velocity frequency signal value for subject and activity in Y axis from gyroscope.
        - unit is radians/second
        
fBodyGyroMeanZ: (numeric)
        
    - Average Mean body velocity frequency signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second
        
fBodyAccMagMean: (numeric)
        
    - Average Mean body acceleration frequency signal magnitude value from accelerometer
        - unit is radians/second^2
        
fBodyAccJerkMagMean: (numeric)
        
    - Average Mean body acceleration frequency Jerk signal magnitude value from acceleromet
        - unit is radians/second^2
        
fBodyGyroMagMean: (numeric)
        
    - Average Mean body velocity frequency signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second
        
fBodyGyroJerkMagMean: (numeric)
        
    - Average Mean body velocity frequency Jerk signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second


tBodyAccStdX: (numeric)
        
    - Average Standard Deviation body acceleration time signal value for subject and activity in X axis from accelerometer
        - unit is radians/second^2
        
tBodyAccStdY: (numeric)
        
    - Average Standard Deviation body acceleration time signal value for subject and activity in Y axis from accelerometer
       - unit is radians/second^2
        
tBodyAccStdZ: (numeric)
        
    - Average Standard Deviation body acceleration time signal value for subject and activity in Z axis from accelerometer
        - unit is radians/second^2
        
tGravityAccStdX: (numeric)
       
    - Average Standard Deviation body and gravity acceleration time signal value for subject and activity in X axis from accelerometer
        - unit is radians/second^2
        
tGravityAccStdY: (numeric)
        
    - Average Standard Deviation body and gravity acceleration time signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
tGravityAccStdZ: (numeric)
        
    - Average Standard Deviation body and gravity acceleration time signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkStdX: (numeric)
        
    - Average Standard Deviation body acceleration time Jerk signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkStdY: (numeric)
        
    - Average Standard Deviation body acceleration time Jerk signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkStdZ: (numeric)
        
    - Average Standard Deviation body acceleration time Jerk signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyGyroStdX: (numeric)
        
    - Average Standard Deviation body velocity time signal value for subject and activity in X axis from gyroscope.
        - unit is radians/second
        
tBodyGyroStdY: (numeric)
        
    - Average Standard Deviation body velocity time signal value for subject and activity in Y axis from gyroscope.
        - unit is radians/second
            
tBodyGyroStdZ: (numeric)
        
    - Average Standard Deviation body velocity time signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkStdX: (numeric)
        
    - Average Standard Deviation body velocity time Jerk signal value for subject and activity in X axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkStdY: (numeric)
        
    - Average Standard Deviation body velocity time Jerk signal value for subject and activity in Y axis from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkStdZ: (numeric)
        
    - Average Standard Deviation body velocity time Jerk signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second
        
tBodyAccMagStd: (numeric)
        
    - Average Standard Deviation body acceleration time signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
tGravityAccMagStd: (numeric)
        
    - Average Standard Deviation body and gravity acceleration time signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
tBodyAccJerkMagStd: (numeric)
        
    - Average Standard Deviation body acceleration time Jerk signal magnitude value from accelerometer
       - unit is standard gravity unit 'g'
        
tBodyGyroMagStd: (numeric)
        
    - Average Standard Deviation body velocity time signal magnitudevalue for subject and activity from gyroscope.
        - unit is radians/second
        
tBodyGyroJerkMagStd: (numeric)
        
    - Average Standard Deviation body velocity time Jerk signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second
        
fBodyAccStdX: (numeric)
        
    - Average Standard Deviation body acceleration frequency signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccStdY: (numeric)
        
    - Average Standard Deviation body acceleration frequency signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccStdZ: (numeric)
        
    - Average Standard Deviation body acceleration frequency signal value for subject and activity in Z axis from accelerometer
       -  unit is standard gravity unit 'g'
        
fBodyAccJerkStdX: (numeric)
        
    - Average Standard Deviation body acceleration frequency Jerk signal value for subject and activity in X axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccJerkStdY: (numeric)
        
    - Average Standard Deviation body acceleration frequency Jerk signal value for subject and activity in Y axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccJerkStdZ: (numeric)
        
    - Average Standard Deviation body acceleration frequency Jerk signal value for subject and activity in Z axis from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyGyroStdX: (numeric)
        
    -Average Standard Deviation body velocity frequency signal value for subject and activity in X axis from gyroscope.
        -unit is radians/second
        
fBodyGyroStdY: (numeric)
        
    - Average Standard Deviation body velocity frequency signal value for subject and activity in Y axis from gyroscope.
        - unit is radians/second
        
fBodyGyroStdZ: (numeric)
        
    - Average Standard Deviation body velocity frequency signal value for subject and activity in Z axis from gyroscope.
        - unit is radians/second
        
fBodyAccMagStd: (numeric)
        
    - Average Standard Deviation body acceleration frequency signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyAccJerkMagStd: (numeric)
        
    - Average Standard Deviation body acceleration frequency Jerk signal magnitude value from accelerometer
        - unit is standard gravity unit 'g'
        
fBodyGyroMagStd: (numeric)
        
    -Average Standard Deviation body velocity frequency signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second
        
fBodyGyroJerkMagStd: (numeric)
    
    - Average Standard Deviation body velocity frequency Jerk signal magnitude value for subject and activity from gyroscope.
        - unit is radians/second




# 2. Background information to study performed by Smartlab.

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
