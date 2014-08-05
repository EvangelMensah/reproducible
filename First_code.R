

## Get working directory
setwd("D:/My docs/Analysis + Cousera/Data Science Specialization/5- Reproducible Research/Proj/Wk_2_proj/RepData_PeerAssessment1")

# clone the GitHub repository created for this assignment

#------------------------------------------------------------------------------
# UNZIP AND LOAD DATA
#------------------------------------------------------------------------------

zipFileName <- "activity.zip"
rawDataFileName <- 'activity.csv'
if(!file.exists(rawDataFileName)){
        unzip(zipFileName)
}

#------------------------------------------------------------------------------
# Loading and preprocessing the data
#------------------------------------------------------------------------------

# Read data and convert date to the date class

data <- read.csv(rawDataFileName, header=TRUE, stringsAsFactors = FALSE)

data$date <- as.Date(data$date , "%d/%m/%Y", TZ = " GMT")

#------------------------------------------------------------------------------
# What is mean total number of steps taken per day?

# For this part of the assignment, you can ignore the missing values in the dataset.
# 
# Make a histogram of the total number of steps taken each day
# 
# Calculate and report the mean and median total number of steps taken per day
#------------------------------------------------------------------------------


mean(data$steps, na.rm =T)     ### Mean
median(data$steps, na.rm =T)   ### Median

steps.data <- na.omit(data$steps)




hist(steps.data)
