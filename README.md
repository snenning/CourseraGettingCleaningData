---
title: "README.md"
author: "S Nenning"
date: "26 March 2018"
output: html_document
---

# Getting and Cleaning Data - Course Project

## R script for Analysis: run_analysis.R

This readme.md document describes the 'run_analysis.R' script, created as part of the course project for Coursera course "Getting and Cleaning Data".

Objective for script is to:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

### Pre-requisite:
-	Script 'run_analysis.R' and original data need to be placed in working folder of R application.
-	Original data (training and test data sets) is in txt files in folder 'UCI HAR Dataset' with 2 subfolders 'train' and 'test'.
-	Note: The original data has been sourced from a study conducted by smartlab.

### Functionality of 'run_analysis.R' script
The script to run the analysis is executed with function 'run_analysis(run = TRUE)'. Argument 'run' is set to TRUE by default and does not need to be set.
The function calls functions 'read_file_dlt' and 'read_file_fwf' to read data from files. These 2 functions are scripted after main 'run_analysis' function.
Output is pipe (|) delimited txt file "train_test_avg_mean_sd.txt".
Please refer to R script 'run_analysis.R' for coding and detailed comments.

#### Main function 'run_analysis()'
Sequence of steps are:

- Load package 'dplyr'

#####1.  Merge the training and the test sets to create one data set.
 
- files with data set 'features' and 'activity labels' are saved in working directory folder 'UCI HAR Dataset'
- 'train' and 'test' data sets are saved in respective subfolder 'train' and 'test' of folder 'UCI HAR Dataset'  

1.1. set default parameters for working directory and directory with data sets, and data frame for combined data set.

1.2.  read files with data set 'features' and 'activity labels'

- Files: features.txt and activity_labels.txt" are in folder "UCI HAR Dataset"
- 'for loop' is used to read data from files and assign it to data frames. The function 'read_file_fwf' is called to read fixed width format files.
    
1.3. read train and test data sets from separate sub folders

-	'for loop' to loop through folders 'train' and then 'test' to load 'train' and 'test' data sets
-	The data set of 1 folder (e.g train) is combined to a single data set in a temporary data frame before being merged with the data set from the 2nd folder (in this case test). This is done to create a complete data set record with subject (e.g subject_train.txt), activity (e.g. y_train.txt) and measurement (e.g X_train.txt); uses a 'for loop' and 'cbind' command.
-	Data files are loaded using function 'read_file_fwf' (function to read fixed width format files)
-	Column names are set using vector string with "subject", "activity" and features from previously loaded data frame.
-	'train' and 'test' data are merged to complete data set using 'rbind'
 
                
#####2. Step to extract only the measurements on the mean and standard deviation for each measurement.     

-	Note: the names of measurements are tidied and assigned to data set (step 4) first before the specified measurements are extracted from data frame.
            
2.1. identify and tidy feature variable names before labelling data set with it
            
-	create vectors with "mean()" or "std()" in name of data set
-	feature names are tidied and saved in separate column  'feature_clean' in data frame 'features'. Tidying includes removing of characters ,()_ from name, correcting typo for BodyBody to Body, and updating 1st letter of measurement mean and std to upper case (Mean and Std) for better readability.
-	Note: change to lower case not done as it reduces the readability of the variable names

-	 headers for data frame with all data 'df_data_all' are updated with tidied names            
            
2.2. extract mean and standard deviation measurements from data set using vector created above and assign to separate data frame.

#####3. Step to use descriptive activity names to name the activities in the data set

- add activity name to data frame by merging with 'activity_labels' df
            
            
#####4. Step to appropriately label the data set with descriptive variable names. 

- Note: this step is performed as part of step 2    
 
 
#####5. Step 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject 

- statement creates txt file after data set is averaged on 'subject' and 'activity'
- pipe (|) delimited txt file "train_test_avg_mean_sd.txt" is created in working directory
- use of %>% command in statement
            
            df_data_mean_std %>% 
                group_by(subject, activity) %>%
                summarise_all(mean) %>%
                write.table("train_test_avg_mean_sd.txt", sep = "|", row.names = FALSE)
            





#### Function 'read_data_dlt' to read delimited file from folder

- directory and file name without extension (sfile) is provided as argument

- "read_file_dlt <- function(directory, sfile)"
    
- loads data of delimited file to temporay data store; space as delimter
    
- 'for loop' and 'if statement' is used to assign names to columns using short file name; rename 'activity_labels' to 'activity' first




#### Function 'read_file_fwf' to read fixed width format file from folder 

- directory and file name without extension (sfile) is provided as argument

- "read_file_fwf <- function(directory, sfile)"

- 1st step is to load data sample as delimited file to determine number of columns with fixed width repetion (Note: this allows to use function for all data set files in folder train and test)
    
- calculate number of repetition of fixed lenghts (16); minimum is 1
    
- load data of delimited file to function output parameter



