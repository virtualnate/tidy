#Run this function in the "UCI HAR Dataset" directory.

run_analysis <- function(){
  
  library(dplyr)
  
  testsub <- read.table("test/subject_test.txt")
  testact <- read.table("test/y_test.txt")
  testvar <- read.table("test/X_test.txt")
  test <- cbind(testsub, testact, testvar)
  
  trainsub <- read.table("train/subject_train.txt")
  trainact <- read.table("train/y_train.txt")
  trainvar <- read.table("train/X_train.txt")
  train <- cbind(trainsub, trainact, trainvar)
  
  total <- rbind(test, train)
  
  features <- read.table("features.txt")
  features <- features[,2]
  features <- as.character(features)
  means <- grep("mean\\(\\)", features)
  stds <- grep("std\\(\\)", features)
  meanstd <- sort(c(means, stds))
  
  total <- total[, c(1,2, meanstd + 2)]
  feature_names <- c("subject", "activity", features[meanstd])
  feature_names <- sub("\\(\\)", "", feature_names)
  feature_names <- gsub("-", "", feature_names)
  feature_names <- tolower(feature_names)
  colnames(total) <- feature_names
  total <- arrange(total, subject, activity)
  
  for(i in 1:dim(total)[1]){
    if(total[i,2] == 1){
      total[i,2] <- "walking"
    } 
    else if(total[i,2] == 2){
      total[i,2] <- "walking upstairs"
    } 
    else if(total[i,2] == 3){
      total[i,2] <- "walking downstairs"
    }
    else if(total[i,2] == 4){
      total[i,2] <- "sitting"
    }
    else if(total[i,2] == 5){
      total[i,2] <- "standing"
    }
    else if(total[i,2] == 6){
      total[i,2] <- "laying"
    }
  }
  
  groups <- group_by(total, subject, activity)
  summarize_each(groups, funs(mean))
}