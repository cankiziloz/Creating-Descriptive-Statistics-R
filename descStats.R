setwd("C:/DataScience")

#Reading the csv file
indicators <- read.csv(
  file = "UN98.csv",
  header = TRUE,
  sep = ",",
  quote = "\"")

#Eliminating the missing values so the evaluations can be done properly
indicators <- na.omit(indicators)

head(indicators)

#Creating a frequency table
table(indicators$region)

#Getting the min value
min(indicators$lifeMale)

#Getting the max value
max(indicators$lifeFemale)

#Getting the average value
mean(indicators$economicActivityMale)

#Getting the median value
median(indicators$economicActivityFemale)

#Getting the quartiles
quantile(indicators$infantMortality)

#Getting the standart deviation
sd(indicators$tfr)

#Getting the summation
sum(indicators$GDPperCapita)

#Getting the correlation coefficient
cor(
  x = indicators$educationFemale,
  y = indicators$economicActivityFemale
)

summary(indicators)


