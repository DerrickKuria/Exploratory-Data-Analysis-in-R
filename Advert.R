#importing the dataset
install.package('data.table')
library(data.table)
library(tidyverse)
#import the data using the created directory
advert <- fread("advertising.csv", header = TRUE)
 
advert

#view the advertise data
view(advert)
#inspect the data in normal CSV format.

#view the information and data types of the data
str(advert)

#check the dimension of the data(shape)
dim(advert)

#Check the class
class(advert)
#we need to change the Feature column into a categorical one
#First we will check the levels
levels(advert$`Clicked on Ad`)
#The results show that it is only 2 Levels "o" and "1".
#Now lets change the data types of categorical variables.

advert$`Clicked on Ad` <- as.factor(advert$`Clicked on Ad`)
#Check levels
levels(advert$Male)
advert$Male <- as.factor(advert$Male)
#Lets inspect the data type again 
str(advert)

#We may also split the Timestamp variable into Date and time variables.To effectively do this we will
# use the tidyr package to split the columns with our delimiter as the space and rename
#the columns as Date and Time. 

install.packages('tidyr')
library("tidyr")

#Check the Mathematical summary of the Advertising dataset
summary(advert)
#This does not appear very organized. WHat can we do? We will do Summaries for each 
#numerical variables
time <- advert$`Daily Time Spent on Site`
age <-  advert$Age
area_income <- advert$`Area Income`
daily_internet <-advert$`Daily Internet Usage`
click <- advert$`Clicked on Ad`
country <-advert$Country
male <- advert$Male
city <- advert$City
topic <- advert$`Ad Topic Line`
timestamp <- advert$Timestamp

#Summary Time
summary(time)
#Summary Age
summary(age)
#Summary Area Income
summary(area_income)
#Summary Daily internet
summary(daily_internet)
# Summary Click
summary(click)

#Check the data using head
head(advert)

#Check the levels in Categorical Variables(Factors)
levels(male)

#The rows
nrow(advert)
# cleaning data
##1. Find missing data

missing_data_area_income <- length(which(is.na(area_income)))
missing_data_area_income
#Number of missing data in click variable
missing_data_click <- length(which(is.na(click)))
missing_data_click

#Number of missing data in time variable
missing_data_time <- length(which(is.na(time)))
missing_data_time

#Number of missing data in daily internet variable
missing_data_daily_internet <- length(which(is.na(daily_internet)))
missing_data_daily_internet

#Number of missing data in age variable
missing_data_age <- length(which(is.na(age)))
missing_data_age

##2. Outliers
#Using Boxplots to show Ouliers in the numeric Variables. If 
boxplot(age)

boxplot(area_income)
boxplot(area_income)$out

boxplot(click)

boxplot(daily_internet)

boxplot(male)

boxplot(time)

##3. Dealing with Duplicates

duplicated_age = advert[duplicated(advert),]
duplicated_age

#We do not have duplicated data.


#Exploratory Data Analysis
##1. measures of Tendency
###a. Mean

mean_age = mean(age)
mean_age

mean_age_clicked_ad = (which(is.na(age)))

mean_daily_internet = mean(daily_internet)
mean_daily_internet

mean_male = mean(male)
mean_male

mean_area_income = mean(area_income)
mean_area_income

mean_click = mean(click)
mean_click

###b. Median
median_age = median(age)
median_age

median_daily_internet = median(daily_internet)
median_daily_internet

median_click = median(click)
median_click


median_area_income = median(area_income)
median_area_income

median_male = median(male)
median_male


###c. Mode

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_age <- getmode(age)
mode_age

mode_daily_internet = getmode(daily_internet)
mode_daily_internet

mode_area_income = getmode(area_income)
mode_area_income



mode_time = getmode(time)
mode_time


###4. Max & Min

max(age)
min(age)

max(time)
min(time)

max(daily_internet)
min(daily_internet)

max(area_income)
min(area_income)

max(click)
min(click)

#Range
range(click)
range(age)
range(daily_internet)
range(areaa-income)
range(time)
range(area_income)

##2. Measures of Dispersion
###a. Variance
var(click)
var(time)
var(age)
var(daily_internet)
var(area_income)

###b. Standard deviation
sd(click)
sd(time)
sd(age)
sd(daily_internet)
sd(area_income)


#b. Bivariate
#Correlation
cor(age,time)
cor(daily_internet,time)
cor(area_income, click)
cor(age, area_income)
cor(time, daily_internet)
