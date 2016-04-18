
library(reshape2)

var_labels<-read.table("~/R/UCI HAR Dataset/features.txt")
var_names<-as.vector(var_labels$V2)
har_data_train<-read.table("~/R/UCI HAR Dataset/train/X_train.txt",col.names = var_names)
har_data_test<-read.table("~/R/UCI HAR Dataset/test/X_test.txt",col.names = var_names)
subject_train<-read.table("~/R/UCI HAR Dataset/train/subject_train.txt",col.names = "subject")
subject_test<-read.table("~/R/UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
activity_train<-read.table("~/R/UCI HAR Dataset/train/y_train.txt",col.names = "activity")
activity_test<-read.table("~/R/UCI HAR Dataset/test/y_test.txt",col.names = "activity")

har_data_train<-har_data_train[,grepl("mean()",var_names,fixed  = TRUE) | 
                                 grepl("std()",var_names,fixed  = TRUE)]
har_data_test<-har_data_test[,grepl("mean()",var_names,fixed  = TRUE) | 
                                 grepl("std()",var_names,fixed  = TRUE)]

har_data<-rbind(cbind(subject_train,activity_train,har_data_train),
                cbind(subject_test,activity_test,har_data_test))
har_data$subject<-factor(har_data$subject)
har_data$activity<-factor(har_data$activity,labels = c("WALKING","WALKING_UPSTAIRS",
                                                       "WALKING_DOWNSTAIRS","SITTING","STANDING",
                                                       "LAYING"))

har_data<-melt(har_data,id=1:2)
har_data2<-dcast(har_data,subject + activity ~ variable,mean)
har_data2<-melt(har_data2,id=1:2)
har_data2<-har_data2[order(har_data2$subject,har_data2$activity),]
