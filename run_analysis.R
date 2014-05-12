## run_analysis.R
## by Luis Argerich
##
## DESCRIPTION:
##
## This script loads the training and test datasets from the 
## Human Activity Recognition Using Smartphones Dataset
## and creatres two tidy datasets:
##
## har_dataset
## har_averages
##
## see: CodeBook.md for a description of the resulting dataset and how
## they are created from the raw data.
##
## see: README.md for general instructions about the created datasets
##

###############################
## TRAIN DATASET PROCESSING  ##
###############################

if(!file.exists("data/train/X_train.txt")) stop("Missing file: data/train/X_train.txt")
if(!file.exists("data/train/y_train.txt")) stop("Missing file: data/train/y_train.txt")
if(!file.exists("data/train/subject_train.txt")) stop("Missing file: data/train/subject_train.txt")

if(!file.exists("data/test/X_test.txt")) stop("Missing file: data/test/X_test.txt")
if(!file.exists("data/test/y_test.txt")) stop("Missing file: data/test/y_test.txt")
if(!file.exists("data/test/subject_test.txt")) stop("Missing file: data/test/subject_test.txt")

message("Loading train files")

## load train x
train <- read.table("data/train/X_train.txt",stringsAsFactors=FALSE)
## load train y
train_y <- read.table("data/train/y_train.txt",stringsAsFactors=FALSE)
## load train subject
train_subject <- read.table("data/train/subject_train.txt",stringsAsFactors=FALSE)

## Rename Columns to Human Readable names

colnames(train)[1]<-"bodyaccelerationxmean"
colnames(train)[2]<-"bodyaccelerationymean"
colnames(train)[3]<-"bodyaccelerationzmean"
colnames(train)[4]<-"bodyaccelerationxstd"
colnames(train)[5]<-"bodyaccelerationystd"
colnames(train)[6]<-"bodyaccelerationzstd"

colnames(train)[41]<-"gravityaccelerationxmean"
colnames(train)[42]<-"gravityaccelerationymean"
colnames(train)[43]<-"gravityaccelerationzmean"
colnames(train)[44]<-"gravityaccelerationxstd"
colnames(train)[45]<-"gravityaccelerationystd"
colnames(train)[46]<-"gravityaccelerationzstd"

colnames(train)[81]<-"bodyaccelerationjerkxmean"
colnames(train)[82]<-"bodyaccelerationjerkymean"
colnames(train)[83]<-"bodyaccelerationjerkzmean"

colnames(train)[84]<-"bodyaccelerationjerkxstd"
colnames(train)[85]<-"bodyaccelerationjerkystd"
colnames(train)[86]<-"bodyaccelerationjerkzstd"

colnames(train)[121]<-"bodygyroxmean"
colnames(train)[122]<-"bodygyroymean"
colnames(train)[123]<-"bodygyrozmean"

colnames(train)[124]<-"bodygyroxstd"
colnames(train)[125]<-"bodygyroystd"
colnames(train)[126]<-"bodygyrozstd"

colnames(train)[161]<-"bodygyrojerkxmean"
colnames(train)[162]<-"bodygyrojerkymean"
colnames(train)[163]<-"bodygyrojerkzmean"

colnames(train)[164]<-"bodygyrojerkxstd"
colnames(train)[165]<-"bodygyrojerkystd"
colnames(train)[166]<-"bodygyrojerkzstd"

keeps<-c("bodyaccelerationxmean","bodyaccelerationymean","bodyaccelerationzmean",
         "bodyaccelerationxstd","bodyaccelerationystd","bodyaccelerationzstd",
         "gravityaccelerationxmean","gravityaccelerationymean","gravityaccelerationzmean",
         "gravityaccelerationxstd","gravityaccelerationystd","gravityaccelerationzstd",
         "bodyaccelerationjerkxmean","bodyaccelerationjerkymean","bodyaccelerationjerkzmean",
         "bodyaccelerationjerkxstd","bodyaccelerationjerkystd","bodyaccelerationjerkzstd",
         "bodygyroxmean","bodygyroymean","bodygyrozmean",
         "bodygyroxstd","bodygyroystd","bodygyrozstd",
         "bodygyrojerkxmean","bodygyrojerkymean","bodygyrojerkzmean",
         "bodygyrojerkxstd","bodygyrojerkystd","bodygyrojerkzstd"
)

train<-train[keeps]

## Add train subject column 
train<-cbind(train_subject,train)
colnames(train)[1]<-"subject"

## Add activity column
activities<-c("walking","walking upstairs","walking downstairs","sitting","standing","laying")
train_y[[1]]<-activities[train_y[[1]]]
train<-cbind(train,train_y)
colnames(train)[32]<-"activity"
train$activity<-as.factor(train$activity)

############################
## TEST DATASET PROCESSING #
############################

message("Loading test files")

## load test x
test <- read.table("data/test/X_test.txt",stringsAsFactors=FALSE)
## load test y
test_y <- read.table("data/test/y_test.txt",stringsAsFactors=FALSE)
## load test subject
test_subject <- read.table("data/test/subject_test.txt",stringsAsFactors=FALSE)

## Rename Columns to Human Readable names

colnames(test)[1]<-"bodyaccelerationxmean"
colnames(test)[2]<-"bodyaccelerationymean"
colnames(test)[3]<-"bodyaccelerationzmean"
colnames(test)[4]<-"bodyaccelerationxstd"
colnames(test)[5]<-"bodyaccelerationystd"
colnames(test)[6]<-"bodyaccelerationzstd"

colnames(test)[41]<-"gravityaccelerationxmean"
colnames(test)[42]<-"gravityaccelerationymean"
colnames(test)[43]<-"gravityaccelerationzmean"
colnames(test)[44]<-"gravityaccelerationxstd"
colnames(test)[45]<-"gravityaccelerationystd"
colnames(test)[46]<-"gravityaccelerationzstd"

colnames(test)[81]<-"bodyaccelerationjerkxmean"
colnames(test)[82]<-"bodyaccelerationjerkymean"
colnames(test)[83]<-"bodyaccelerationjerkzmean"

colnames(test)[84]<-"bodyaccelerationjerkxstd"
colnames(test)[85]<-"bodyaccelerationjerkystd"
colnames(test)[86]<-"bodyaccelerationjerkzstd"

colnames(test)[121]<-"bodygyroxmean"
colnames(test)[122]<-"bodygyroymean"
colnames(test)[123]<-"bodygyrozmean"

colnames(test)[124]<-"bodygyroxstd"
colnames(test)[125]<-"bodygyroystd"
colnames(test)[126]<-"bodygyrozstd"

colnames(test)[161]<-"bodygyrojerkxmean"
colnames(test)[162]<-"bodygyrojerkymean"
colnames(test)[163]<-"bodygyrojerkzmean"

colnames(test)[164]<-"bodygyrojerkxstd"
colnames(test)[165]<-"bodygyrojerkystd"
colnames(test)[166]<-"bodygyrojerkzstd"

test<-test[keeps]

## Add test subject column 
test<-cbind(test_subject,test)
colnames(test)[1]<-"subject"

## Add activity column
activities<-c("walking","walking upstairs","walking downstairs","sitting","standing","laying")
test_y[[1]]<-activities[test_y[[1]]]
test<-cbind(test,test_y)
colnames(test)[32]<-"activity"
test$activity<-as.factor(test$activity)

message("Creating har dataset")

## merge train and test datasets into single dataset
har<-rbind(train,test)


## STEP 2
## Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject. 

message("Creating haraverages")

options(warn=-1)
haraverages<-aggregate(har,list(subject=har$subject,activity=har$activity), mean)
haraverages[[34]]<-NULL
haraverages[[3]]<-NULL
options(warn=0)

## Cleaning environment
rm(test)
rm(test_subject)
rm(test_y)
rm(train)
rm(train_subject)
rm(train_y)
rm(activities)
rm(keeps)

message("Process finished datasets created!")
