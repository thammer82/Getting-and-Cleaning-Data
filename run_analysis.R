# This script opens gets data from two files from the UCI HAR Dataset, combines them and cleans them.
# the working directory should be set to the "UUCI HAR DATASET" folder

# open datasets, subject labels, activity labels, and variable names text file
xtrain <- read.table("train/x_train.txt")
xtest <- read.table("test/x_test.txt")
namefile <- read.table("features.txt")
train_labels <- read.table("train/y_train.txt")
test_labels <- read.table("test/Y_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

xtrain <- cbind(subject_train, train_labels, xtrain)
xtest <- cbind(subject_test, test_labels, xtest)

# combine tables and add names taken from "features" text.  
data <- rbind(xtrain,xtest)
varnames <- c("Subject", "Activity", as.vector(namefile$V2))
colnames(data) <- varnames
# extract only mean and standard deviation for each measurement, that is variables ending in "mean()" or "std()"
sub_variables <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")
sub_data <- subset(data, select = c("Subject", "Activity", sub_variables))

# apply descriptive terms for each variable (see codebook for list of descriptive variables)
desc_names <- c("Body_Accelerometer-mean_time-X_Axis", "Body_Accelerometer-mean_time-Y_Axis", "Body_Accelerometer-mean_time-Z_Axis", "Body_Accelerometer-Time_std-X_Axis", "Body_Accelerometer-Time_std-Y_Axis", "Body_Accelerometer-Time_std-Z_Axis", "Gravity_Accelerometer-mean_Time-X_Axis", "Gravity_Accelerometer-mean_Time-Y_Axis", "Gravity_Accelerometer-mean_Time-Z_Axis", "Gravity_Accelerometer-Time_std-X_Axis", "Gravity_Accelerometer-Time_std-Y_Axis", "Gravity_Accelerometer-Time_std-Z_Axis", "Body_Accerometer_Jerk-mean_Time-X_Axis", "Body_Accerometer_Jerk-mean_Time-Y_Axis", "Body_Accerometer_Jerk-mean_Time-Z_Axis", "Body_Accelerometer_Jerk-Time_std-X_Axis", "Body_Accelerometer_Jerk-Time_std-Y_Axis", "Body_Accelerometer_Jerk-Time_std-Z_Axis", "Body_Gyroscope-mean_time-X_axis", "Body_Gyroscope-mean_time-Y_axis", "Body_Gyroscope-mean_time-Z_axis", "Body_Gyroscope-Time_std-X_Axis", "Body_Gyroscope-Time_std-Y_Axis", "Body_Gyroscope-Time_std-Z_Axis", "Body_Gyroscope_Jerk-mean_Time-X_Axis", "Body_Gyroscope_Jerk-mean_Time-Y_Axis", "Body_Gyroscope_Jerk-mean_Time-Z_Axis", "Body_Gyroscope_Jerk-Time_std-X_Axis", "Body_Gyroscope_Jerk-Time_std-Y_Axis", "Body_Gyroscope_Jerk-Time_std-Z_Axis", "Body_Accelerometer_Magnitude-mean_Time", "Body_Accelerometer_Magnitude-Time_std", "Gravity_Accelerometer_Magnitude-Mean_Time", "Gravity_Accelerometer_Magnitude-Time_std", "Body_Accelerometer_Jerk_Magnitude-Mean_Time", "Body_Accelerometer_Jerk_Magnitude-Time_std", "Body_Gyroscope_Magnitude-Mean_Time", "Body_Gyroscope_Magnitude-Time_std", "Body_Gyroscope_Jerk_Magnitude-Mean_Time", "Body_Gyroscope_Jerk_Mag-Time_std", "Body_Accelerometer-Freq_mean-X_Axis", "Body_Accelerometer-Freq_mean-Y_Axis", "Body_Accelerometer-Freq_mean-Z_Axis", "Body_Accelerometer-Freq_std-X_Axis", "Body_Accelerometer-Freq_std-Y_Axis", "Body_Accelerometer-Freq_std-Z_Axis", "Body_Accelerometer_Jerk-Freq_mean-X_Axis", "Body_Accelerometer_Jerk-Freq_mean-Y_Axis", "Body_Accelerometer_Jerk-Freq_mean-Z_Axis", "Body_Accelerometer_Jerk-std_X_Axis", "Body_Accelerometer_Jerk-std_Y_Axis", "Body_Accelerometer_Jerk-std_Z_Axis", "Body_Gyroscope-Freq_mean-X_Axis", "Body_Gyroscope-Freq_mean-Y_Axis", "Body_Gyroscope-Freq_mean-Z_Axis", "Body_Gyroscope-Freq_std-X_Axis", "Body_Gyroscope-Freq_std-Y_Axis", "Body_Gyroscope-Freq_std-Z_Axis", "Body_Accelerometer_Magnitude-Freq_mean", "Body_Accelerometer_Magnitude-Freq_std", "Body_Body_Gyroscope_Magnitude-Freq_mean", "Body_Body_Gyroscope_Magnitude-Freq_std", "Body_Body_Gyroscope_Jerk_Magnitude-Freq_mean", "Body_Body_Gyroscope_Jerk_Magnitude-freq_std")
colnames(sub_data) <- c("Subject", "Activity", desc_names)


# uses a for-loop to create a vector of descriptive activity labels based on the
#numeric activity label codes.  
desc <- vector()
for (i in sub_data$Activity){
  if (i == 1){
    desc <- append(desc, "WALKING")
  }
  else if (i == 2){
    desc <- append(desc,"WALKING_UPSTAIRS")
  } 
  else if (i == 3){
    desc <- append(desc,"WALKING_DOWNSTAIRS")
  } 
  else if (i == 4){
    desc <- append(desc,"SITTING")
  } 
  else if (i == 5){
    desc <- append(desc,"STANDING")
  } 
  else if (i == 6){
    desc <- append(desc,"LAYING")
  } 
}
#replaces activity codes with descriptive label vector
sub_data$Activity <- desc


#output first tidy data table
write.table(sub_data, "tidy_data1.txt")


# the next section creates a second tidy data set with variable averages for each activity

Subject_Number <- vector()
final <- function(subject){
  Walking <- colMeans(subset(sub_data, Subject == subject & Activity == "WALKING", select = desc_names))
  Walking_Upstairs <- colMeans(subset(sub_data, Subject == subject & Activity == "WALKING_UPSTAIRS", select = desc_names))
  Walking_Downstairs <- colMeans(subset(sub_data, Subject == subject & Activity == "WALKING_DOWNSTAIRS", select = desc_names))
  Sitting <- colMeans(subset(sub_data, Subject == subject & Activity == "SITTING", select = desc_names))
  Standing <- colMeans(subset(sub_data, Subject == subject & Activity == "STANDING",select = desc_names))
  Laying <- colMeans(subset(sub_data, Subject == subject & Activity == "LAYING", select = desc_names))
  Subject_Number <- append(Subject_Number, subject)
  final_data <- rbind(Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying)
  final_data <- cbind(Subject_Number, final_data)
  return(final_data)
}


tidy2 <- data.frame()
final_row_names <- c()
for(i in 1:30){
  #subject <- c()
  sub_final <- final(i)
  tidy2 <- rbind(tidy2, sub_final)
  #subject <- merge("subject",i)
  #final_row_names <- append(final_row_names,subject)
}

# now we will set the rowname to be a combination of the subject and the activity
acts <- row.names(tidy2)
subjs <- tidy2$Subject_Number
rname <- paste(subjs, acts, "Average", sep = "-")
row.names(tidy2) <- rname
tidy2 <- subset(tidy2, select = c(desc_names))


# finally we will export our second tidy data set
write.table(tidy2, "tidy_data2.txt")



