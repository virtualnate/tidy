#Run this function in the "UCI HAR Dataset" directory.
#Make sure the dplyr package is installed.

run_analysis <- function(){
  
  #The following downloads the activity data, subject data, and 
  #variable data from the test folder, and combines them 
  #into a single data frame.
  testact <- read.table("test/y_test.txt")
  testsub <- read.table("test/subject_test.txt")
  testvar <- read.table("test/X_test.txt")
  test <- cbind(testact, testsub, testvar)
  
  #The following downloads the activity data, subject data, and 
  #variable data from the train folder, and combines them 
  #into a single data frame.  
  trainact <- read.table("train/y_train.txt")
  trainsub <- read.table("train/subject_train.txt")
  trainvar <- read.table("train/X_train.txt")
  train <- cbind(trainact, trainsub, trainvar)
  
  #The following combines both the test and train data into a 
  #single data frame.
  total <- rbind(test, train)
  
  #The follwing creates the column names from the original 
  #features file.
  features <- read.table("features.txt")
  features <- features[,2]
  features <- as.character(features)
  means <- grep("mean\\(\\)", features)
  stds <- grep("std\\(\\)", features)
  meanstd <- sort(c(means, stds))
  
  #The following adds activity and subject to the column names
  #and adds them to the total data frame.  It also arranges the rows
  #by activity and then subject.  It also gets rid of the parentheses
  #from the column names and sets all the letters to lowercase.
  total <- total[, c(1,2, meanstd + 2)]
  feature_names <- c("activity", "subject", features[meanstd])
  feature_names <- sub("\\(\\)", "", feature_names)
  feature_names <- gsub("-", "", feature_names)
  feature_names <- tolower(feature_names)
  colnames(total) <- feature_names
  total <- arrange(total, subject, activity)
  
  #The following set of if statements changes the activity names from 
  #1-6 to laying, sitting, standing, walking, walking downstairs and 
  #walking upstairs.
  for(i in 1:dim(total)[1]){
    if(total[i,1] == 1){
      total[i,1] <- "walking"
    } 
    else if(total[i,1] == 2){
      total[i,1] <- "walking upstairs"
    } 
    else if(total[i,1] == 3){
      total[i,1] <- "walking downstairs"
    }
    else if(total[i,1] == 4){
      total[i,1] <- "sitting"
    }
    else if(total[i,1] == 5){
      total[i,1] <- "standing"
    }
    else if(total[i,1] == 6){
      total[i,1] <- "laying"
    }
  }
  
  #Below we group the data by subject and activity, and then take the 
  #mean of all the variables for each subject and activity.
  groups <- group_by(total, activity, subject)
  tidy <- summarize_each(groups, funs(mean))
  write.table(tidy, file = "tidy.txt", row.names = FALSE)
}