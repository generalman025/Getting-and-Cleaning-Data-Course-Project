
##############################################
## *** MUST SET ROOT FOLDER FOR DATASET *** ##
##############################################
root.folder <- './UCI HAR Dataset'

##############################################################################################################
## Merge, Label variable and Extract only mean and standard deviation for each measurement for 'X' variable ##
##############################################################################################################
library(tidyverse)

X.train <- read.table(paste0(root.folder, '/train/X_train.txt'))
X.test <- read.table(paste0(root.folder, '/test/X_test.txt'))
X <- rbind(X.train, X.test)

feature <- read.table(paste0(root.folder, '/features.txt'))
select.loc <- grep('mean\\(\\)|std\\(\\)', feature$V2)
X <- subset(X, select = select.loc)
name.feature <- feature[select.loc, 'V2']
name.feature <- gsub('^f', 'Frequency', name.feature)
name.feature <- gsub('^t', 'Time', name.feature)
name.feature <- gsub('Acc', 'Accelerometer', name.feature)
name.feature <- gsub('Gyro', 'Gyroscope', name.feature)
name.feature <- gsub('Mag', 'Magnitude', name.feature)
name.feature <- gsub('-X', 'XAxis', name.feature)
name.feature <- gsub('-Y', 'YAxis', name.feature)
name.feature <- gsub('-Z', 'ZAxis', name.feature)

select.mean.loc <- grep('-mean\\(\\)', name.feature)
select.std.loc <- grep('-std\\(\\)', name.feature)
name.feature[select.mean.loc] <- paste0('Average' ,name.feature[select.mean.loc])
name.feature[select.std.loc] <- paste0('StandardDeviation' ,name.feature[select.std.loc])
name.feature <- gsub('-mean\\(\\)|-std\\(\\)', '', name.feature)
names(X) <- name.feature

###############################################################
## Merge, Label variable and Transform data for 'y' variable ##
###############################################################
y.train <- read.table(paste0(root.folder, '/train/y_train.txt'))
y.test <- read.table(paste0(root.folder, '/test/y_test.txt'))
y <- rbind(y.train, y.test)

activity.label <- read.table(paste0(root.folder, '/activity_labels.txt'))
y <- merge(y, activity.label, by.x='V1', by.y='V1')
y <- subset(y, select = -c(V1))
names(y) <- c('ActivityLabel')

#####################################################
## Merge and Label variable for 'subject' variable ##
#####################################################
subject.train <- read.table(paste0(root.folder, '/train/subject_train.txt'))
subject.test <- read.table(paste0(root.folder, '/test/subject_test.txt'))
subject <- rbind(subject.train, subject.test)
names(subject) <- c('Subject')

########################
## Merge all variable ##
########################
tidy_data <- cbind(subject, y, X)

## Remove unused variable
rm(root.folder, X.train, X.test, X, feature, name.feature, select.loc, select.std.loc, select.mean.loc, y.train, y.test, y, activity.label, subject.train, subject.test, subject)

## Export
#export_data <- aggregate(select(tidy_data, -c(Subject, ActivityLabel)), by=list(Subject=tidy_data$Subject, ActivityLabel=tidy_data$ActivityLabel), FUN = mean)
#export_data <- arrange(export_data, Subject, ActivityLabel)
#write.table(export_data, file='export_average_dataset.txt', row.name=FALSE)
