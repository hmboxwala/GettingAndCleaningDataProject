# GettingAndCleaningDataProject
Repository for the Course Project for Getting And Cleaning Data on Coursera.

This repo contains the R script(run_analysis.R) for creating a tidy data from different text files in the 'UCI HAR Dataset' folder provided by the Getting And Cleaning Data class on 
coursera. It also contains a codebook describing the variables of the tidy dataset created after running the script successfully.

The script(run_analysis.R) assumes that the working directory is set to the UCI HAR Dataset folder. The final dataset would be written as a text file. The script will create a 
new folder called 'tidy daya' inside the UCI HAR Dataset folder and in that folder will create the tidy dataset file called 'tidyData.txt'.

Although the tidy data is read into your R workspace after writing it , to read the final dataset yourself in R after running the script, just type the below 
command **without changing the working directory** after the script has run:

varName<-read.table("../tidy data/tidyData.txt",header=TRUE)