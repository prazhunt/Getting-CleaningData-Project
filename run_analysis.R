#setwd("C:\\Users\\User\\Desktop")

#------------------------Part - I -----------------------------------------------------

#Downloading and unzipping the data. This code is CurrentWorkingDirectory-Agnostic. Assuming the 
#Working Directory is A. It creates a folder "data" inside it(if it already doesn't exist) i.e A/data
if(!file.exists("./data")){dir.create("./data")}

#Now, to navigate to the newly created folder.
setwd("./data")
#Good, now we are inside the folder and we can d/l the data

#Downloading the zip file from the Url
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="UCI-HAR-Dataset.zip")

#Unzipping the file
unzip("UCI-HAR-Dataset.zip")

#Once unzipped, we know that it is going to create a folder "UCI HAR Dataset" and recursively
#files and folders inside it. So, we have to navigate into "UCI HAR Dataset"
setwd("./UCI HAR Dataset")

#Navigating further down to access TRAIN data
setwd("./train")

#Reading the train datasets
subjecttrain <- read.table("subject_train.txt",col.names = "subject")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("Y_train.txt",col.names = c("activityno"))

#Clipping or Binding the data read, column-to-column
train<-cbind(xtrain,subjecttrain,ytrain)

#Navigating to the parent i.e "UCI HAR Dataset" folder
setwd("..")

#Navigating down to access TEST data
setwd("./test")

#Reading the test datasets
subjecttest <- read.table("subject_test.txt",col.names = "subject")
xtest <- read.table("X_test.txt")
ytest <- read.table("Y_test.txt",col.names = c("activityno"))

#Clipping or Binding the data read, column-to-column
test<-cbind(xtest,subjecttest,ytest)

#Appending the TRAIN and TEST datsets one below the other
mergeddata <- rbind(train,test)

#Navigating to the parent i.e "UCI HAR Dataset" folder
setwd("..")

#Loading required libraries for the analysis. Please install the packages if not already done
library(dplyr)
library(tidyr)

#Reading the Features and Activity files
features<-read.table("features.txt",col.names = c("serialno","features"),stringsAsFactors=FALSE)
activity_labels<-read.table("activity_labels.txt",col.names = c("activitylabel","activityname"),stringsAsFactors=FALSE)

#---------------------------------------------------------------------------------------

#------------------------Part - II -----------------------------------------------------

#Selecting the features relating to mean and SD
#Note: Some variables like meanfreq() have been ommitted as I thought they are not suitable for the analysis
featuresmean <- features[grep("[m][e][a][n][(][])](.*)$", features$features, ignore.case = TRUE),]
featuresstd <- features[grep("[s][t][d][(][])](.*)$", features$features, ignore.case = TRUE),]

#Arranging all the variables in a dataset and suffixing them with V
#This was done so as to make them consistent with the names of the variables present in the Test and Train datasets
featuresrequired <- rbind(featuresmean,featuresstd) %>% arrange(serialno)
featuresrequired$serialno <- paste(c("V"),featuresrequired$serialno,sep="")
#Now, "featuresrequired" has all the desired features(variables) along with the identifier(Ex: V1/V2)
#to identify the feature in the "mergeddata"

#Transposing the "mergeddata" so as to convert feature columns into rows(using key-value pair)
mergeddatanew <- mergeddata %>% gather(serialno, featurevalue, -subject,-activityno,convert=FALSE)

#Getting the descriptive names of the features
mergedwithfeatures <- merge(mergeddatanew,featuresrequired,by.x="serialno",by.y="serialno")

#---------------------------------------------------------------------------------------

#------------------------Part - III -----------------------------------------------------

#Getting the descriptive names of the activities
mergedwithactivity <- merge(mergedwithfeatures,activity_labels,by.x="activityno", by.y="activitylabel")

#---------------------------------------------------------------------------------------

#------------------------Part - V -----------------------------------------------------

#Taking the mean of the features.
avgmergeddata <- mergedwithactivity %>% group_by(subject,activityname,features) %>% summarise(avgfeaturevalue = mean(featurevalue))

#This data is still in the narrow/long tidy data set form. Converting to wide data format
tidydata <- avgmergeddata %>% spread(features,avgfeaturevalue)

#---------------------------------------------------------------------------------------

#------------------------Part - IV -----------------------------------------------------

#Renaming the column names to make them more readable and understandable
names(tidydata) <- sub("^t", "Time-", names(tidydataoldnames))
names(tidydata) <- sub("^f", "Frequency-", names(tidydataoldnames))
names(tidydata) <- sub("[(][)]", "", names(tidydataoldnames))
names(tidydata) <- sub("[m][e][a][n]", "Mean", names(tidydataoldnames))
names(tidydata) <- sub("[s][t][d]", "STD", names(tidydataoldnames))
names(tidydata) <- sub("[B][o][d][y][B][o][d][y]", "Body", names(tidydataoldnames))
names(tidydata) <- gsub("[-]", "_", names(tidydataoldnames))

#---------------------------------------------------------------------------------------

#Taking the ouput in the required format
write.table(tidydata,"TidyData.txt",row.name=FALSE)