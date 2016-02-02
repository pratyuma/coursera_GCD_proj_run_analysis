## project info https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
## project explaination ppt: https://drive.google.com/file/d/0B1r70tGT37UxYzhNQWdXS19CN1U/view
run_analysis <- function () {

setwd("/users/shekhar/testR/jhucoursera/jhucoursera")

## Read all the train files  
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE, sep="")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE,sep="")
subtrain <-read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE,sep="")

## Read all the test files
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt",header = FALSE,sep="")
subtest <-read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE,sep="")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE,sep="")

## combine all train data set together, test data set together and then combine train data set and test dataset
traindata <- cbind(subtrain,ytrain,xtrain)
testdata <- cbind(subtest,ytest,xtest)
combdata <- rbind(testdata,traindata)

#Read features list for column names
features <- read.table("./UCI HAR Dataset/features.txt",header = FALSE, sep = "")

## add column names
cnames<-c("subject","activity",as.character(features$V2))
colnames(combdata) <- cnames

## Filter only columns with "mean" and "std" dev
gd<-(grep("mean|std",colnames(combdata)))
gd <- c(1,2,gd)            ## filter 1st,2nd, and all other cols with mean and std dev data
meanstddata <- combdata[,gd]

## Read activity labels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)
activitylabels <-as.character(activitylabels$V2)

## Replace activity numbers with activity labels e.g. "2" replaced by "Laying"
for(i in 1:6){

  meanstddata$activity <- sub(i,activitylabels[i],meanstddata$activity)
}

## Eliminate "-", "()" for readable data sets
colnames(meanstddata) <-gsub("\\(\\)","",colnames(meanstddata))
colnames(meanstddata) <-gsub("-","",colnames(meanstddata))
colnames(meanstddata) <-gsub("^[Ff]","freq",colnames(meanstddata))
colnames(meanstddata) <-gsub("^[Tt]","time",colnames(meanstddata))
colnames(meanstddata) <-tolower(colnames(meanstddata))  ## convert all column names to lower case

## convert the subject and activity cols to factor so that aggregate function can be used
meanstddata$activity <- as.factor(meanstddata$activity)
meanstddata$subject <- as.factor(meanstddata$subject)

##group the data according to subject first and then by activity and then take mean for the group. only take the unique combinations of subject and activity
aggdata <- aggregate(meanstddata,by=list(subject=meanstddata$subject,activity=meanstddata$activity),mean)

## Delete the old activity and subject cols since they have "NAs" now
aggdata[,4] = NULL
aggdata[,3] = NULL

## Write the tidy data set
write.table(aggdata,"tidy_data.txt",sep="\t")
print(colnames(aggdata))
}
