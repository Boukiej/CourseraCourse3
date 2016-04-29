####### Step 0: libraries #######
## Remove all current objects in R
rm(list=ls())

## Load libraries
library(dplyr)

####### Step 1: getting and merging data #######
## Create folder and  download file
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

##unzip files
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## read data
# (1) X -> Features
TestdataX        <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE)
TraindataX       <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header=FALSE)
# (2) Y -> Activities
TestdataY        <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", header=FALSE)
TraindataY       <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", header=FALSE)
# (3) Subject
TestdataSubject  <-read.table("./data/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
TraindataSubject <-read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

## Merge data
DataX        <-rbind(TestdataX, TraindataX)
DataY        <-rbind(TestdataY, TraindataY)
DataSUBJECT  <-rbind(TestdataSubject, TraindataSubject)

## Set names 
# (1) subject and activity
names(DataSUBJECT)<-c("subject")
names(DataY)<- c("activity")

# (2) feature
DataYNames<-read.table("./data/UCI HAR Dataset/features.txt", header=FALSE)
names(DataX)<- DataYNames$V2

##Combine data
# (1) subject and activity
dataSY <- cbind(DataSUBJECT, DataY)
# (2) feature
data <- cbind(DataX, dataSY)

####### Step 2: extracting mean and sd-data #######
keepnames<-DataYNames$V2[grep("mean\\(\\)|std\\(\\)", DataYNames$V2)]
keepnames<-c(as.character(keepnames),"subject", "activity")
Subset<-subset(data,select=keepnames)

####### Step 3: set desciptive names for activities #######
## read data features and activity
Activity<-read.table("./data/UCI HAR Dataset/activity_labels.txt")

#Activities in column 68 of Subset
Subset[,68]<-Activity[Subset[,68],2]

####### Step 4: appropriate labels for variable names #######
## Rename Activity & Subject columns 
colnames(Subset)[67]<-"SubjectID"
colnames(Subset)[68]<-"Activity"

##Reorder and removin "()" from columnnames
Subset<-Subset %>% select(SubjectID,Activity,contains("()"))
list<-gsub("\\()","",names(Subset))
colnames(Subset)<-list

####### Step 5: the average of each variable for each activity and each subject #######
Export<-aggregate(. ~SubjectID + Activity, Subset, mean)
write.table(Export, file = "TidyData.txt",row.name=TRUE)
