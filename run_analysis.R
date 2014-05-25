
#Read in the training and test data, and their column names(features)
train <- read.table("train/X_train.txt")
test <- read.table("test/X_test.txt")
features <- read.table("features.txt")
colnames(test) <- features[,2]
colnames(train) <- features[,2]

#Combine the two sets
complete <- rbind(test,train)

#subset only means and standard deviation columns
colnames(complete) <- tolower(colnames(complete))
colnames(complete) <- gsub("[-|(|)|,]","",colnames(complete))
complete <- complete[, sort(union(grep("mean*",colnames(complete)),grep("std*",colnames(complete))))]

#Eliminate all columns not a time series
complete <- complete[,1:40]

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy <- data.frame(Means = apply(complete,2,mean))

#Export the data to a file
write.table(tidy, file = "tidydata.txt")

