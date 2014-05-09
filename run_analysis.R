## run_analysis.R
## by Luis Argerich
##
## DESCRIPTION:
##
## This script loads the training and test datasets from the 
## Human Activity Recognition Using Smartphones Dataset
## and creatres two tidy datasets:
##
## humanActivityRecognitionCompact.csv
## humanActivityRecognitionAvegares.csv
##
## see: CodeBook.md for a description of the resulting dataset and how
## they are created from the raw data.
##
## see: README.md for general instructions about the created datasets
##

###############################
## TRAIN DATASET PROCESSING  ##
###############################

## load train x
train <- read.table("data/train/X_train.txt",stringsAsFactors=FALSE)
## load train y
train_y <- read.table("data/train/y_train.txt",stringsAsFactors=FALSE)
## load train subject
train_subject <- read.table("data/train/subject_train.txt",stringsAsFactors=FALSE)

## Rename Columns to Human Readable names

colnames(train)[1]<-"body_acceleration_x(mean)"
colnames(train)[2]<-"body_acceleration_y(mean)"
colnames(train)[3]<-"body_acceleration_z(mean)"
colnames(train)[4]<-"body_acceleration_x(std)"
colnames(train)[5]<-"body_acceleration_y(std)"
colnames(train)[6]<-"body_acceleration_z(std"

colnames(train)[41]<-"gravity_acceleration_x(mean)"
colnames(train)[42]<-"gravity_acceleration_y(mean)"
colnames(train)[43]<-"gravity_acceleration_z(mean)"
colnames(train)[44]<-"gravity_acceleration_x(std)"
colnames(train)[45]<-"gravity_acceleration_y(std)"
colnames(train)[46]<-"gravity_acceleration_z(std)"

colnames(train)[81]<-"body_acceleration_jerk_x(mean)"
colnames(train)[82]<-"body_acceleration_jerk_y(mean)"
colnames(train)[83]<-"body_acceleration_jerk_z(mean)"

colnames(train)[84]<-"body_acceleration_jerk_x(std)"
colnames(train)[85]<-"body_acceleration_jerk_y(std)"
colnames(train)[86]<-"body_acceleration_jerk_z(std)"

colnames(train)[121]<-"body_gyro_x(mean)"
colnames(train)[122]<-"body_gyro_y(mean)"
colnames(train)[123]<-"body_gyro_z(mean)"

colnames(train)[124]<-"body_gyro_x(std)"
colnames(train)[125]<-"body_gyro_y(std)"
colnames(train)[126]<-"body_gyro_z(std)"

colnames(train)[161]<-"body_gyro_jerk_x(mean)"
colnames(train)[162]<-"body_gyro_jerk_y(mean)"
colnames(train)[163]<-"body_gyro_jerk_z(mean)"

colnames(train)[164]<-"body_gyro_jerk_x(std)"
colnames(train)[165]<-"body_gyro_jerk_y(std)"
colnames(train)[166]<-"body_gyro_jerk_z(std)"

keeps<-c("body_acceleration_x(mean)","body_acceleration_y(mean)","body_acceleration_z(mean)",
         "body_acceleration_x(std)","body_acceleration_y(std)","body_acceleration_z(std",
         "gravity_acceleration_x(mean)","gravity_acceleration_y(mean)","gravity_acceleration_z(mean)",
         "gravity_acceleration_x(std)","gravity_acceleration_y(std)","gravity_acceleration_z(std)",
         "body_acceleration_jerk_x(mean)","body_acceleration_jerk_y(mean)","body_acceleration_jerk_z(mean)",
         "body_acceleration_jerk_x(std)","body_acceleration_jerk_y(std)","body_acceleration_jerk_z(std)",
         "body_gyro_x(mean)","body_gyro_y(mean)","body_gyro_z(mean)",
         "body_gyro_x(std)","body_gyro_y(std)","body_gyro_z(std)",
         "body_gyro_jerk_x(mean)","body_gyro_jerk_y(mean)","body_gyro_jerk_z(mean)",
         "body_gyro_jerk_x(std)","body_gyro_jerk_y(std)","body_gyro_jerk_z(std)"
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

## load test x
test <- read.table("data/test/X_test.txt",stringsAsFactors=FALSE)
## load test y
test_y <- read.table("data/test/y_test.txt",stringsAsFactors=FALSE)
## load test subject
test_subject <- read.table("data/test/subject_test.txt",stringsAsFactors=FALSE)

## Rename Columns to Human Readable names

colnames(test)[1]<-"body_acceleration_x(mean)"
colnames(test)[2]<-"body_acceleration_y(mean)"
colnames(test)[3]<-"body_acceleration_z(mean)"
colnames(test)[4]<-"body_acceleration_x(std)"
colnames(test)[5]<-"body_acceleration_y(std)"
colnames(test)[6]<-"body_acceleration_z(std"

colnames(test)[41]<-"gravity_acceleration_x(mean)"
colnames(test)[42]<-"gravity_acceleration_y(mean)"
colnames(test)[43]<-"gravity_acceleration_z(mean)"
colnames(test)[44]<-"gravity_acceleration_x(std)"
colnames(test)[45]<-"gravity_acceleration_y(std)"
colnames(test)[46]<-"gravity_acceleration_z(std)"

colnames(test)[81]<-"body_acceleration_jerk_x(mean)"
colnames(test)[82]<-"body_acceleration_jerk_y(mean)"
colnames(test)[83]<-"body_acceleration_jerk_z(mean)"

colnames(test)[84]<-"body_acceleration_jerk_x(std)"
colnames(test)[85]<-"body_acceleration_jerk_y(std)"
colnames(test)[86]<-"body_acceleration_jerk_z(std)"

colnames(test)[121]<-"body_gyro_x(mean)"
colnames(test)[122]<-"body_gyro_y(mean)"
colnames(test)[123]<-"body_gyro_z(mean)"

colnames(test)[124]<-"body_gyro_x(std)"
colnames(test)[125]<-"body_gyro_y(std)"
colnames(test)[126]<-"body_gyro_z(std)"

colnames(test)[161]<-"body_gyro_jerk_x(mean)"
colnames(test)[162]<-"body_gyro_jerk_y(mean)"
colnames(test)[163]<-"body_gyro_jerk_z(mean)"

colnames(test)[164]<-"body_gyro_jerk_x(std)"
colnames(test)[165]<-"body_gyro_jerk_y(std)"
colnames(test)[166]<-"body_gyro_jerk_z(std)"

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


## merge train and test datasets into single dataset
har_dataset<-rbind(train,test)


## STEP 2
## Creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject. 

har_averages<-aggregate(har_dataset,list(subject=data$subject,activity=data$activity), mean)
har_averages[[34]]<-NULL
har_averages[[3]]<-NULL

