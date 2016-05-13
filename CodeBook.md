#CodeBook
CodeBook provides additional information about variables, the data, and any transformations or work that you performed to clean up the data
#Variables
[1] "activity"                "subject"                 "tbodyaccmeanx"          
 [4] "tbodyaccmeany"           "tbodyaccmeanz"           "tbodyaccstdx"           
 [7] "tbodyaccstdy"            "tbodyaccstdz"            "tgravityaccmeanx"       
[10] "tgravityaccmeany"        "tgravityaccmeanz"        "tgravityaccstdx"        
[13] "tgravityaccstdy"         "tgravityaccstdz"         "tbodyaccjerkmeanx"      
[16] "tbodyaccjerkmeany"       "tbodyaccjerkmeanz"       "tbodyaccjerkstdx"       
[19] "tbodyaccjerkstdy"        "tbodyaccjerkstdz"        "tbodygyromeanx"         
[22] "tbodygyromeany"          "tbodygyromeanz"          "tbodygyrostdx"          
[25] "tbodygyrostdy"           "tbodygyrostdz"           "tbodygyrojerkmeanx"     
[28] "tbodygyrojerkmeany"      "tbodygyrojerkmeanz"      "tbodygyrojerkstdx"      
[31] "tbodygyrojerkstdy"       "tbodygyrojerkstdz"       "tbodyaccmagmean"        
[34] "tbodyaccmagstd"          "tgravityaccmagmean"      "tgravityaccmagstd"      
[37] "tbodyaccjerkmagmean"     "tbodyaccjerkmagstd"      "tbodygyromagmean"       
[40] "tbodygyromagstd"         "tbodygyrojerkmagmean"    "tbodygyrojerkmagstd"    
[43] "fbodyaccmeanx"           "fbodyaccmeany"           "fbodyaccmeanz"          
[46] "fbodyaccstdx"            "fbodyaccstdy"            "fbodyaccstdz"           
[49] "fbodyaccjerkmeanx"       "fbodyaccjerkmeany"       "fbodyaccjerkmeanz"      
[52] "fbodyaccjerkstdx"        "fbodyaccjerkstdy"        "fbodyaccjerkstdz"       
[55] "fbodygyromeanx"          "fbodygyromeany"          "fbodygyromeanz"         
[58] "fbodygyrostdx"           "fbodygyrostdy"           "fbodygyrostdz"          
[61] "fbodyaccmagmean"         "fbodyaccmagstd"          "fbodybodyaccjerkmagmean"                                                 [64] "fbodybodyaccjerkmagstd"  "fbodybodygyromagmean"    "fbodybodygyromagstd" 

#Data
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Transformations
1.Merge the training and the test sets to create one data set.
2.Extract only the measurements on the mean and standard deviation for each measurement.
3.Use descriptive activity names to name the activities in the data set 
4.Appropriately label the data set with descriptive variable names. 
5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
