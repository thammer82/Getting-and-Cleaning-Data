==================================================================
Read_me for Run_analysis.R
Submitted for Getting and Cleaning Data (June 2014)
==================================================================

Introduction - 
The purpose of this script is to output two tidy data tables from the smartphone activity measurment dataset found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data is taken from training and testing groups.  30 subjects total.  The codebook included in the same repo contains all the information regarding variable names.  
The first tidy dataset is subset of the data that only includes the means and standard deviations of the measurements.
The second tidy dataset is the mean of those variables organized by subject and activity 
The working directory should be set to the "UUCI HAR DATASET" folder
==================================================================

Order of operations -
The first sections of code open and combine the training and testing datasets into a single dataframe and adds the variable names from the info.txt file
Next I took a subset of the data which only includes the means "mean()" and standard deviations "std()" of the measurements.
I then replaced the default column names with descriptive variable names. (see codebook for details.).
I used a for loop and conditional statements to convert the numeric activity codes to descriptive activity names.
Then I exported this tidy data set as "tidy_data1.txt"

To create the second data set I defined a function final() that takes a subject number as an argument.  It goes through the activities for the subject and finds the mean for each variable for that activity.  It then returns a combined dataframe.
I used a for loop to go through each subject and apply the the final() function it it and combine all this into a single data frame.
To make this dataset more tidy, I combined the subject and activity in the final row name column.
This second dataset is then exported as "tidy_data2.txt". 
