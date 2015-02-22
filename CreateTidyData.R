# This script creates a tidy data from the different files in the "UCI HAR Dataset" folder.
# After running this script you should have the dataframe tidyData created containing the
# tidy data set with 180 observations and 81 variables. If you start with a clean 
# workspace the the tidyData should be the only object in you workspace.
# The script also creates a physical file tidyData.txt in the tidy data folder inside
# your UCI HAR Dataset. The script assumes the working directory is set to the 
# "UCI HAR Dataset" folder.


features<-read.table("features.txt",sep=" ",stringsAsFactors=FALSE) # Read the features.txt file
features<-features$V2
features<-gsub("[-,]","",features) #remove the hyphen and comma from the variable names
features<-gsub("BodyBody","Body",features) # correct the typo made by people who prepared the file

# change working directory to train and read the files present
setwd("./train") 
subject_train<-read.table("subject_train.txt",stringsAsFactors=FALSE)
X_train<-read.table("X_train.txt",stringsAsFactors=FALSE)
y_train<-read.table("y_train.txt",stringsAsFactors=FALSE)

# change working directory to test and read the files present
setwd("../test")
subject_test<-read.table("subject_test.txt",stringsAsFactors=FALSE)
X_test<-read.table("X_test.txt",stringsAsFactors=FALSE)
y_test<-read.table("y_test.txt",stringsAsFactors=FALSE)

# Combine the train and test files for X, y and subject
y<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)
X<-rbind(X_train,X_test)

# Remove the train and test files as they are no longer required to save memory
rm(X_train)
rm(X_test)
rm(y_train)
rm(y_test)
rm(subject_train)
rm(subject_test)

# Below code assigns the column headers to the X dataset and then extracts the mean
# and std measures and then creates a new dataset with just those features.
names(X)<-features
meanCols<-grep("mean",names(X),value=T,fixed=TRUE)
stdCols<-grep("std",names(X),value=T,fixed=TRUE)
X1<-X[,c(meanCols,stdCols)]

# Below code removes the "()" after the mean and std to make the variable names legal
# in R. You might get error using x$fBodyAccMagmean() as R will attempt to call a function
# fBodyAccMagmean() instead of getting the column "fBodyAccMagmean()".
features<-names(X1)
features<-gsub("()","",features,fixed=TRUE)
features<-gsub("mean","Mean",features) # making the variables readable
features<-gsub("std","Std",features) # making the variables readable
names(X1)<-features # reassigning the formatted variable names as column headers
X<-X1 # replacing X with X1 as X is no longer required to save memory
rm(X1) # removing X1 as we have already copied its contents in X
names(subject)="Subject"
names(y)="Activity"
data<-cbind(subject,y,X) # creating a complete dataset by combining X,y and subject datasets

# Replacing the activity numbers with activity labels.
data$Activity[data$Activity==1]<-"WALKING"
data$Activity[data$Activity==2]<-"WALKING_UPSTAIRS"
data$Activity[data$Activity==3]<-"WALKING_DOWNSTAIRS"
data$Activity[data$Activity==4]<-"SITTING"
data$Activity[data$Activity==5]<-"STANDING"
data$Activity[data$Activity==6]<-"LAYING"

# Remove the unwanted objects from workspace.
rm(X);rm(subject);rm(y)
rm(features);rm(meanCols);rm(stdCols)

# Performing step 5 to create a new dataset with the average 
# of each variable for each activity and each subject.
library(dplyr)
data<-tbl_dt(data)
data<-data %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))
data<-arrange(data,Subject)
data<-as.data.frame(data)

# Writing the tidy data created in the txt format to upload.
if(!file.exists("../tidy data")){
  dir.create("../tidy data", showWarnings = TRUE, recursive = FALSE, mode = "0777")
}
if(!file.exists("../tidy data/tidyData.txt")) file.create("../tidy data/tidyData.txt")
write.table(data,"../tidy data/tidyData.txt",row.names = FALSE)

# Remove the unwanted objects from workspace.
rm(data)

# Read the tidy data from the txt created above as a dataframe in R.
tidyData<-read.table("../tidy data/tidyData.txt",header=TRUE)

