library(dplyr)
library(plyr)
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = "data.zip")
unzip("data.zip")

###########  1.

Xtest<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/test/X_test.txt")
Ytest<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/test/subject_test.txt")

Xtrain<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/train/X_train.txt")
Ytrain<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/train/subject_train.txt")

X<-rbind(Xtrain,Xtest)
Y<-rbind(Ytrain,Ytest)
sub<-rbind(subtrain,subtest)

########### 2.

feat<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/features.txt")
mean_sd<-grep("-(mean|std)\\(\\)",feat$V2)

clean_data<-X[,mean_sd]
colnames(clean_data)<-feat[mean_sd,2]

########### 3.

activity<-read.table("C:/Users/d.shpiruk/Documents/UCI HAR Dataset/activity_labels.txt")
Y[,1]<-activity[Y$V1,2]
colnames(Y)[1]<-"activity"

########### 4.


data<-cbind(clean_data,Y,sub)
colnames(data)[ncol(data)]<-"subject"

########### 5.

res<-data%>%
  group_by(activity,subject)%>%
  summarise_each(funs(mean))

write.table(res, "result.txt", row.name=FALSE)
