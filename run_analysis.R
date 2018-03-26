##Getting and Cleaning Data - Course Project

## R scripts for Analysis: run_analysis.R

## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names. 
   #  Note: variable names are retrieved from 'tidied' features name and performed as part of step 2
## 5 From the data set in step 4, creates a second, independent 
##  tidy data set with the average of each variable for each activity and each subjet

## 'run_analysis' is defined as a function; 
# this function calls functions 'read_file_dlt' and 'read_file_fwf' to read data from file
# these 2 functions are scripted after main 'run_analysis' function


## function 'run_analysis' to run analysis

run_analysis <- function(run = TRUE){     # start function 'run_analyis'
    
    # install package 'dplyr'
    library(dplyr)
    
    # exit function 'run_analysis' if run argument is not equal to TRUE
        if (as.logical(run) != TRUE){
            stop("analysis not executed; please enter argument TRUE or leave blank")
        }
    
    ## STEP 1: Merges the training and the test sets to create one data set.
    # read data files and merge data sets for test and train into 1 data set
    # files with data set 'features' and 'activity labels' are saved in working directory folder 'UCI HAR Dataset'
    # 'train' and 'test' data sets are saved in respective subfolder 'train' and 'test' of folder 'UCI HAR Dataset'
    
    
    ## 1.1: set default parameters 
        # for working directory and directory with data set
            wd <-getwd()
            directory_default = paste(wd, "UCI HAR Dataset", sep = "/")
            directory <- directory_default
        
        # define data frame to store combined test and train data sets and set to NULL
            df_data_all <- NULL
        
    
        
    ## 1.2:  read files with data set 'features' and 'activity labels'
        # specify list of files with 'features' and 'activity labels' data
            lfiles <- c("features.txt", "activity_labels.txt")
        
        # Create list of data frame names (assigned to 'df_file') from file names (without the ".txt" part) 
        # data from files is assigned to data frames in 'for loop' for data load
            df_file <- sub("\\.txt","", lfiles)
        
        # 'for loop' to read data from files and assign it to data frames defined above
        # function read_file_fwf to read fixed width format files
            for (f in df_file) {   # start 'for loop' files in folder
                assign(f, read_file_dlt(directory, f) )
            }   # end 'for loop' files in folder
    
        
    
    ## 1.3: read data sets from separate sub folders
    
        # specify sub folders with data sets and assign to parameter
            lfolders <- c("train", "test")
        
        ## loop through folders to load 'train' and 'test' data sets
            
            for (folder in lfolders) {      # start 'for loop' for folders
                
            # reset directory and temporary data frame
                directory <- directory_default
                df_data_tmp <- NULL
                
            # add folder to directory string
                directory<- paste(directory,folder, sep = "/")
                
            # specify list of files in folder with data sets; file names include folder name
                lfiles <- c(paste0("subject_",folder,".txt"), paste0("y_",folder,".txt"),
                            paste0("X_",folder,".txt"))
                
                
            # Create list of data frame names from file names (without the ".txt" part)
            # data from files is assigned to data frames in 'for loop' for data load
                df_file <- sub("\\.txt","", lfiles)
                
            ## 'for loop' to read data from files and assign it to data frame
            # function 'read_file_fwf' to read fixed width format files
                
                for (f in df_file) {    # start 'for loop' files in folder
                    
                    # combine data from files in folder to single data frame
                    # this is done to create a complete data set record with subject, activiy and measurement data
                    # data set records correspond to same row in each file
                    
                    # assign data from 1st file ('subject_....txt') to temporary data frame
                    if (is.null(df_data_tmp)){
                        df_data_tmp <-  read_file_fwf(directory, f)
                    }
                    else {
                    # add subsequent data from files in folder to temporary data frame as additional columns
                        df_data_tmp <- cbind(df_data_tmp, read_file_fwf(directory, f))
                    } 
                }   # end 'for loop' files in folder
                
                
                # assign column names to temporary data frame; names for measurements are taken from 'features' file
                    names(df_data_tmp) <- c("subject", "activity", features$features)
                
               
            ## MERGE 'train' and 'test' data in complete data set as final step
                # assign data from first folder to data frame with all data sets
                if (is.null(df_data_all)){
                    df_data_all <-  df_data_tmp
                }
                else {
                # add subsequent data to data frame as additional rows
                    df_data_all <- rbind(df_data_all, df_data_tmp)
                } 
                
                
            }     # end 'for loop' for folders
    
            
    ## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.     

        ## Note: the names of measurements are tidied and assigned to data set (step 4) first
        # before the specified measurements are extracted
            
        ## 2.1: identify and tidy feature variable names before labelling data set with it
            
        # create vectors with "mean" or "std" in name of data set
            v_mean <- grep("mean\\()", names(df_data_all))
            v_std <- grep("std()", names(df_data_all))
         
        # tidy feature names      
        # create a separate column 'feature_clean' with tidied name in data frame 'features'
        # remove characters ,()_ from name
        # correct typo for BodyBody to Body
        # update 1st letter of measurement mean and std to upper case (Mean and Std) for better readability
        # change to lower case not done as it reduces the readability of the variable names
            features$feature_clean <- features$features
            features$feature_clean <- gsub("\\,", "", features$feature_clean)
            features$feature_clean <- gsub("\\(", "", features$feature_clean)  
            features$feature_clean <- gsub("\\)", "", features$feature_clean)    
            features$feature_clean <- gsub( "-", "", features$feature_clean)
            features$feature_clean <- gsub( "BodyBody", "Body", features$feature_clean)
            features$feature_clean <- gsub( "mean", "Mean", features$feature_clean)
            features$feature_clean <- gsub( "std", "Std", features$feature_clean)
            # features$feature_clean <- tolower(features$feature_clean)
        
        # update headers for data frame with all data 'df_data_all' with tidied names
            names(df_data_all) <- c("subject", "activity", features$feature_clean)
            
            
        ## 2.2: extract mean and standard deviation measurements from data set using vector created above
        
        # extract mean and std measurements from data frame; include subject (1) and activity (2) column
        # assign it to data frame df_data_mean_std
            df_data_mean_std <- df_data_all[,c(1,2,v_mean,v_std)]
            

    ## Step 3: Use descriptive activity names to name the activities in the data set
        # add activity name to data frame by merging with 'activity_labels' df
            df_data_mean_std <- merge(x=df_data_mean_std, y=activity_labels, by.x = "activity", by.y = "activity_no")
        # remove column with activity number from data frame  
            df_data_mean_std <- df_data_mean_std[,-1]
            
            
    ## STEP 4: Appropriately label the data set with descriptive variable names. 
        # Note: this step is performed as part of step 2    
 
            
    ## STEP 5: From the data set in step 4, creates a second, independent 
    ##   tidy data set with the average of each variable for each activity and each subjet 
        # statement below creates txt file after data set is averaged on 'subject' and 'activity'
        # | delimited txt file "train_test_avg_mean_sd.txt" is created in working directory
            
            df_data_mean_std %>% 
                group_by(subject, activity) %>%
                summarise_all(mean) %>%
                write.table("train_test_avg_mean_sd.txt", sep = "|", row.names = FALSE)
            
            
                    
}    # end function 'run_analyis'




## function 'read_data_dlt' to read delimited file from folder
# directory and file name without extension (sfile) is provided as argument
# column names are specified using file name

read_file_dlt <- function(directory, sfile){       # start function 'read_file_dlt'
    
    # add extension '.txt' to file name
    file <- paste(sfile,".txt",sep="")
    
    # specify file path from directory and file name
    filepath <- paste(directory,file, sep = "/")
    
    ## load data of delimited file to temporay data store; delimter ' '  (= space)
    read_data_tmp <- read.delim(filepath, sep = " ", header = FALSE , stringsAsFactors = FALSE)
    
    
    ## 'for loop' and 'if statement' to assign names to columns using short file name
    # rename 'activity_labels' to 'activity' first
    if(sfile=="activity_labels") {
        sfile <- "activity"
    }
    
    i<-1
    # 'for loop' to assign names to olumns
    for (i in 1:ncol(read_data_tmp)){
        
        # if statement to specify name for column 1 and 2
        if (i==1) {
            names(read_data_tmp)[i] <- paste(sfile,"no",sep = "_")   # name is sfile + 'no'; e.g. activity_no
        }
        else if (i==2) {
            names(read_data_tmp)[i] <- sfile                         # name is sfile; e.g. activity
        }
        
    }
    # assign temporary data stor to function output parameter
    out <- read_data_tmp
    
}     # end function 'read_file_dlt'



## function 'read_file_fwf' to read fixed width fromat file from folder
## directory and file name without extension (sfile) is provided as argument

read_file_fwf <- function(directory, sfile){    # start function 'read_file_fwf'
    
    # add extension '.txt' to file name
    file <- paste(sfile,".txt",sep="")
    
    # specify file path from directory and file name
    filepath <- paste(directory,file, sep = "/")
    
    # load data sample as delimited file to determine number of columns with fixed width repetion
    # Note: this allows to use function for all data set files in folder train and test
    data_sample <- read.delim(filepath, sep = ",", header = FALSE , stringsAsFactors = FALSE, nrows = 2)
    
    # Number of repetition of fixed lenghts (16); minimum is 1
    nrep <- nchar(data_sample[1,])/16
    if (nrep <1) {nrep <- 1}
    
    ## load data of delimited file to function output parameter
    out <- read.fwf(filepath, widths = rep(16, nrep))
    
}   # end function 'read_file_fwf'
