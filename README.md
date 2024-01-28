# Learning-R
R programming from basic to advanced practice session
getwd()
#ND 1
library("tidyverse")
install.packages("data.table")
library("data.table")
install.packages("caret")
library("caret")
install.packages("stringr")
library("stringr")
install.packages("summarytools")
library("summarytools")

#ND 2
rm(list = ls())
rm(list = ld(all.names = TRUE))
gc()
View(iris)
head(iris)
head(iris, 15)

#Importing file
mydata<-read.csv(directory)
data<- na.omit(iris)
#replacing
iris_na[is.na(iris_na)] <- 0
write.csv(iris, "modified")

#ND 3
#descriptive statistics
str(iris)
min(iris$sepal.length)
max(iris$sepal.length)
rng<-range(iris$sepal.length)
rng
rng[1]
rng[2]
max(iris$sepal.length) -min(iris$sepal.length)
mean(iris$sepal.length)
median(iris$sepal.length)
quantile(iris$sepal.length, 0.75)
IQR(iris$sepal.length)
summary(iris$sepal.length)
sd(iris$sepal.length)
var(iris$sepal.length)
by(iris, iris$variety, summary)

#ND 4

setwd("C:/Users/pc/Desktop/Rstudio")
install.packages("pastecs")
library(pastecs)
data(iris)
View(iris)
mydata<-read.csv(paste file path)
stat.desc(iris)
sd(iris$Sepal.Length / mean (iris$Sepal.Length))
sd(iris$Sepal.Width / mean (iris$Sepal.Width))
tab<-table(iris$Sepal.Length)
tab
sort(tab, decreasing =TRUE)
cor(iris$Sepal.Length, iris$Sepal.Width)

iris$size <- ifelse("iris$Sepal.Length" < median("iris$Sepal.Length"),
                    "small", "big")
#Histogram
hist(iris$Sepal.Length)
#QQ-plot
qqnorm(iris$Sepal.Length)
qqline(iris$Sepal.Length)

iris$color<- ifelse(iris$Petal.Length < median(iris$Petal.Length),
                    "black", "white")

table(iris$variety, iris$size)
prop.table(iris$variety, iris$size)
prop.table(table(iris$variety, iris$size))
round(prop.table(table(iris$variety, iris$size)))

#mosaic table
mosaicplot(iris$variety, iris$size,
           color = TRUE,
           xlab = "variety",
           ylab = "size")
