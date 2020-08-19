# Getting and Cleaning Data Week 1 Quiz Solutions.
# General Solutions to the problem of accessing and formating data.

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

getwd()
setwd("./data")
list.files()

download.file(fileUrl, destfile = "./Quiz1-01.csv")

quizData <- read.csv("Quiz1-01.csv")
# Display dimension attributes of the dataframe, and preview the data.
dim(quizData)
head(quizData)

sum(quizData$VAL == 24, na.rm = TRUE)

# Question 2

# Tidy data has one variable per column

# Question 3

fileUrl2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"

download.file(fileUrl2, destfile = "./Quiz1-03.xlsx")

datedownloaded <- date()
datedownloaded

install.packages("xlsx")
library(xlsx)

col <- 7:15
row <- 18:23
data <- read.xlsx("./Quiz-03.xlsx", sheetIndex = 1, colIndex = col, rowIndex = row)

sum(data$Zip*data$Ext, na.rm = TRUE)

# Question 4
install.packages("XML")
library(XML)

fileUrl3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

download.file(fileUrl3, destfile = "./Quiz01-04.xml")

Balresto <- xmlTreeParse("Quiz01-04.xml", useInternalNodes = TRUE)

rootnode <- xmlRoot(Balresto)

rootnode

zip <- xpathSApply(rootnode, "//zipcode", xmlValue)

sum(zip == 21231)

# Question 5

install.packages("data.table")
library(data.table)

fileUrl4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

download.file(fileUrl4, "Quiz01-05.csv")

DT <- fread("./Quiz01-05.csv")
head(DT)





