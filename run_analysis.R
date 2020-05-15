library(tidyverse)

##############################################
## *** MUST SET ROOT FOLDER FOR DATASET *** ##
##############################################
root.folder <- './UCI HAR Dataset'

##############################################################################################################
## Merge, Label variable and Extract only mean and standard deviation for each measurement for 'X' variable ##
##############################################################################################################
X.train <- read.table(paste0(root.folder, '/train/X_train.txt'))
X.test <- read.table(paste0(root.folder, '/test/X_test.txt'))
X <- rbind(X.train, X.test)

feature <- read.table(paste0(root.folder, '/features.txt'))
select.loc <- grep('mean\\(\\)|std\\(\\)', feature$V2)
X <- subset(X, select = select.loc)
names(X) <- feature[select.loc, 'V2']
names(X) <- gsub('^f', 'Frequency', names(X))
names(X) <- gsub('^t', 'Time', names(X))
names(X) <- gsub('Acc', 'Accelerometer', names(X))
names(X) <- gsub('Gyro', 'Gyroscope', names(X))
names(X) <- gsub('Mag', 'Magnitude', names(X))
names(X) <- gsub('-mean\\(\\)', 'Mean', names(X))
names(X) <- gsub('-std\\(\\)', 'StandardDeviation', names(X))
names(X) <- gsub('-X', 'XAxis', names(X))
names(X) <- gsub('-Y', 'YAxis', names(X))
names(X) <- gsub('-Z', 'ZAxis', names(X))

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

tidy_data <- cbind(subject, y, X)

## Remove unused variable
rm(X.train, X.test, X, feature, select.loc, y.train, y.test, y, activity.label, subject.train, subject.test, subject)

## Export 
#export_data <- aggregate(select(tidy_data, -c(Subject, ActivityLabel)), by=list(Subject=tidy_data$Subject, ActivityLabel=tidy_data$ActivityLabel), FUN = mean)
#names(export_data)[3:68] <- paste0('Average', names(export_data)[3:68])
#export_data <- arrange(export_data, Subject, ActivityLabel)
#write.table(export_data, file='export_summarized_dataset.txt', row.name=FALSE)
