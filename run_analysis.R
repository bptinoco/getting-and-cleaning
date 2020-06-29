## Getting and Cleaning Final Project
  ## Brendan P Tinoco

# load in the dplyr and tidyr packages
  library(dplyr, tdyr)
 
## Merge the training and test sets ####

## load each data set
  # create a directory for the data
    path <- "./UCI HAR Dataset"
      
  # load features vector
    file <- paste(path, "/features.txt", sep = "")
    features <- read.table(file = file, header = FALSE, sep = "")

  # load activity label vector
    file <- paste(path, "/activity_labels.txt", sep = "")
    act_lab <- read.table(file = file, header = F, sep = "")

  # load subjects data for both test and training
    file <- paste(path, "/test/subject_test.txt", 
                  sep = "")
    subject_test <- read.table(file = file, header = FALSE,
                               sep = "", col.names = "subject")
    
    file <- paste(path, "/train/subject_train.txt", 
                  sep = "")
    subject_train <- read.table(file = file, header = FALSE,
                                sep = "", col.names = "subject")
  
  # load the activities data set
    file <- paste(path, "/test/y_test.txt", sep = "")
    act_test <- read.table(file = file, header = F,
                           sep = "", col.names = "activity")
    
    file <- paste(path, "/train/y_train.txt", sep = "")
    act_train <- read.table(file = file, header = F,
                            sep = "", col.names = "activity")
    
  # load test data
    file <- paste(path, "/test/X_test.txt", sep = "")
    test <- read.table(file = file, header = FALSE, sep = "")
    colnames(test) <- features$V2
    
  # load training data
    file <- paste(path, "/train/X_train.txt", sep = "")
    train <- read.table(file = file, header = FALSE, sep = "")
    colnames(train) <- features$V2

## merge the data sets

  # combine all test data sets using cbind
    test <- cbind(subject_test, act_test, test)
    # remove all old test data
      rm(subject_test, act_test)
    
  # combine all train data set using cbind
    train <- cbind(subject_train, act_train, train)
    # remove all old train data
      rm(subject_train, act_train)
      
  # combine both files into a final combined data set
    data <- rbind(test, train)
    
  # drop all irrelevant objects in environment
      rm(test, train, file, features)

## Extract mean and SD ####
  
## subset the variables to select just the means and SD variables
  data.2 <- select(data, c(subject,
                           activity,
                           contains(c("mean()", "std()", 
                                      ignore.case = FALSE))))
  
## Name the activities in the data ####
  
## recode the activity variable
    # make it a character vector
      data.2$activity <- as.character(data.2$activity)
    
    # recode using dplyr
    data.2$activity <- recode(data.2$activity,
                            "1" = act_lab$V2[1],
                            "2" = act_lab$V2[2],
                            "3" = act_lab$V2[3],
                            "4" = act_lab$V2[4],
                            "5" = act_lab$V2[5],
                            "6" = act_lab$V2[6])

## Name variables descriptive variable names ####
    
## use regular expression change the variable names
    colnames(data.2) <- gsub("-std[(][)]", "-STD",
                             colnames(data.2))
    colnames(data.2) <- gsub("-mean[(][)]", "-Mean",
                             colnames(data.2))
    colnames(data.2) <- gsub("^f", "Freq-",
                             colnames(data.2))
    colnames(data.2) <- gsub("^t", "Time-",
                             colnames(data.2))

## Create the average data set ####
  
  # summarize all the data using the dplyr package
    final <- data.2 %>%
      group_by(subject, activity) %>%
      summarize_all(mean)
        
  # save the data
    write.table(final, file = "final.txt")
    