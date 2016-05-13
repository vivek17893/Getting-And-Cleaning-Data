
#Read the data
activitylabels<-read.table("activity_labels.txt",col.names = c("lno","label"))
features<-read.table("features.txt",col.names = c("fno","feature"))
subjecttrain<-read.table("./train/subject_train.txt",col.names = c("sno"))
xtrain<-read.table("./train/x_train.txt")
ytrain<-read.table("./train/y_train.txt",col.names = c("yno"))
subjecttest<-read.table("./test/subject_test.txt",col.names = c("sno"))
xtest<-read.table("./test/x_test.txt")
ytest<-read.table("./test/y_test.txt",col.names = c("yno"))

#Merge the training and the test sets to create one data set
trainmerge<-cbind(subjecttrain,xtrain,ytrain)
testmerge<-cbind(subjecttest,xtest,ytest)
finaldataset<-rbind(trainmerge,testmerge)
dim(finaldataset)

#Extract only the measurements on the mean and standard deviation for each measurement.
meanandstd<-grep("mean\\(\\)|std\\(\\)",features[,2])
meanandstd1<-grep("mean\\(\\)|std\\(\\)",features[,2])

meanandstd<-paste0("V",meanandstd)
finalrequireddataset<-finaldataset[,meanandstd]
dim(finalrequireddataset)

#Use descriptive activity names to name the activities in the data set
colnames(activitylabels)<-c("ano","alabel")
activitylabels[, 2] <- tolower(gsub("_", "", activitylabels[, 2]))
finaldataset$yno<-activitylabels[finaldataset$yno, 2]




#Appropriately label the data set with descriptive variable names

names(finalrequireddataset) <- features[meanandstd1, 2]
names(finalrequireddataset) <- gsub("\\(|\\)", "", names(finalrequireddataset))
names(finalrequireddataset) <- tolower(names(finalrequireddataset))
cleandata<-cbind(finaldataset$sno,finaldataset$yno,finalrequireddataset)
colnames(cleandata)[which(names(cleandata) == "finaldataset$yno")] <- "activity"
colnames(cleandata)[which(names(cleandata) == "finaldataset$sno")] <- "subject"
colnames(cleandata)<-gsub("-","",colnames(cleandata))
write.table(cleandata, "cleandata.txt",row.names = FALSE)


#From the data set in step 4, create a second, independent tidy data set with the average 
#of each variable for each activity and each subject
install.packages("reshape2")
library(reshape2)
averagedata <- ddply(cleandata, .(activity,subject), function(cleandata) colMeans(cleandata[, 3:66]))
write.table(averagedata, "averagedata.txt",row.names = FALSE)

