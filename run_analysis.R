test <- read.table("./UCI HAR Dataset/test/X_test.txt")  #Download test
train <- read.table("./UCI HAR Dataset/train/X_train.txt")  #Download train
comb <- rbind(test, train)  #Combine into one set (Requirement #1)

features <- read.table("./UCI HAR Dataset/features.txt") #Download features file
features.factor <- features[,2] #Extract just features into factor
features.vector <- as.vector(features.factor)  #Change to vector
colnames(comb) <- features.vector  #Add as column names to data frame (Requirement #4)

comb1 <- comb[,grep(c("mean|std"), colnames(comb))] #Extracts mean/stdev columns (Requirement #2)
comb1 <- comb1[,grep(c("meanFreq"), colnames(comb1), invert=TRUE)] #Excludes "meanFreq" columns


testactivities <- read.table("./UCI HAR Dataset/test/y_test.txt")  #Download test activities
trainactivities <- read.table("./UCI HAR Dataset/train/y_train.txt")  #Download train activities
activitycodes <- rbind(testactivities, trainactivities) #Combine activity codes into one frame
activitycodes$activitycodes <- activitycodes[,1] #Add name to activity code column
activitycodes <- activitycodes[,1]

comb <- cbind(activitycodes, comb1)

activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
al2 <- as.vector(activitylabels[,2])
comb$activitynames <- al2[comb$activitycodes] #Add activity names column (Requirement #3)
nc <- ncol(comb)
comb <- comb[c(nc, 1:(nc-1))] #Move activity names column to first column


trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt") #Download train subject codes
testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt") #Download test subject codes
subcomb <- rbind(testsub,trainsub)  #Combine subject files
subc <- subcomb[,1]
comb$subject <- subc  #Add subject codes to main data frame

tidydata <- aggregate(comb, by = list(Subject = comb$subject, ActivityNames = comb$activitynames), mean, simplify=TRUE, na.rm=TRUE) #Summarize - mean by each subject/activity pair
tidydata <- subset(tidydata, select = -c(subject, activitynames))  #Excess column cleanup
