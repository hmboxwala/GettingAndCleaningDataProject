# GettingAndCleaningDataProject
Repository for the Course Project for Getting And Cleaning Data on Coursera.

This repo contains the R script(run_analysis.R) for creating a tidy data from different text files in the 'UCI HAR Dataset' folder provided by the Getting And Cleaning Data class on 
coursera. It also contains a codebook describing the variables of the tidy dataset created after running the script successfully.
The script works as follows:
- Merges the training and the test sets to create one data set. 
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More details of each step is explained in detail in the script.

The script(run_analysis.R) assumes that the working directory is set to the UCI HAR Dataset folder. The final dataset would be written as a text file. The script will create a 
new folder called 'tidy daya' inside the UCI HAR Dataset folder and in that folder will create the tidy dataset file called 'tidyData.txt'. To run the script successfully you need to 
have the 'dplyr' and 'data.table' packages installed.

Although the tidy data is read into your R workspace after writing it , to read the final dataset yourself in R after running the script, just type the below 
command **without changing the working directory** after the script has run:

varName<-read.table("../tidy data/tidyData.txt",header=TRUE)

To read the uploaded data file into R, change the working directory to the directory where you have saved the file and type:

varName<-read.table("tidyData.txt",header=TRUE)

or to read directly from the url where the file is uploaded type:

tidyData<-read.table("http://s3.amazonaws.com/coursera-uploads/user-a07b0e6375dce519e2f742df/973498/asst-3/808011d0ba5911e4a6849da3d066e85a.txt",header=TRUE)
