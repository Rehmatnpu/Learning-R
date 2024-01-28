# R Programming Practice Session

# Day 1

# Set working directory
setwd("C:/Users/pc/Desktop/Rstudio")

# Load necessary libraries
library(tidyverse)
library(data.table)
library(caret)
library(stringr)
library(summarytools)

# Reading a CSV file
my_data <- read.csv("C:/Users/pc/Desktop/Rstudio/iris.csv")

# Day 2

# Clear the workspace
rm(list = ls())
gc()

# View the 'iris' dataset
View(iris)

# Display the first 6 rows of 'iris'
head(iris)

# Display the first 15 rows of 'iris'
head(iris, 15)

# Importing file
mydata <- read.csv("C:/Users/pc/Desktop/Rstudio/iris.csv")

# Remove NA values from the 'iris' dataset
data <- na.omit(iris)

# Replace NA values in 'iris_na' with 0
iris_na[is.na(iris_na)] <- 0

# Write the modified 'iris' dataset to a CSV file
write.csv(iris, "modified.csv")

# Day 3

# Display structure of 'iris' dataset
str(iris)

# Calculate minimum sepal length
min(iris$Sepal.Length)

# Calculate maximum sepal length
max(iris$Sepal.Length)

# Calculate range of sepal length
rng <- range(iris$Sepal.Length)
rng
rng[1]
rng[2]

# Calculate the range of sepal length using max and min
max(iris$Sepal.Length) - min(iris$Sepal.Length)

# Calculate mean sepal length
mean(iris$Sepal.Length)

# Calculate median sepal length
median(iris$Sepal.Length)

# Calculate 75th percentile of sepal length
quantile(iris$Sepal.Length, 0.75)

# Calculate Interquartile Range (IQR) of sepal length
IQR(iris$Sepal.Length)

# Summary statistics of sepal length
summary(iris$Sepal.Length)

# Standard deviation of sepal length
sd(iris$Sepal.Length)

# Variance of sepal length
var(iris$Sepal.Length)

# Summary statistics by 'variety' using 'by' function
by(iris, iris$variety, summary)

# Day 4

# Set working directory
setwd("C:/Users/pc/Desktop/Rstudio")

# Install and load the 'pastecs' package
install.packages("pastecs")
library(pastecs)

# Load the 'iris' dataset
data(iris)

# View the 'iris' dataset
View(iris)

# Read a CSV file (replace with your actual file path)
mydata <- read.csv("paste file path")

# Calculate statistics of 'iris' dataset
stat.desc(iris)

# Standard deviation of Sepal.Length relative to its mean
sd(iris$Sepal.Length) / mean(iris$Sepal.Length)

# Calculate a table of Sepal.Length values
tab <- table(iris$Sepal.Length)
tab

# Sort the table in decreasing order
sort(tab, decreasing = TRUE)

# Calculate the correlation between Sepal.Length and Sepal.Width
cor(iris$Sepal.Length, iris$Sepal.Width)

# Create a new column 'size' based on Sepal.Length
iris$size <- ifelse(iris$Sepal.Length < median(iris$Sepal.Length),
                    "small", "big")

# Create a histogram of Sepal.Length
hist(iris$Sepal.Length)

# Create a QQ-plot of Sepal.Length
qqnorm(iris$Sepal.Length)
qqline(iris$Sepal.Length)

# Create a new column 'color' based on Petal.Length
iris$color <- ifelse(iris$Petal.Length < median(iris$Petal.Length),
                     "black", "white")

# Create a table of 'variety' and 'size' and calculate proportions
table(iris$variety, iris$size)
prop.table(table(iris$variety, iris$size))
round(prop.table(table(iris$variety, iris$size)))

# Create a mosaic plot of 'variety' and 'size'
mosaicplot(iris$variety, iris$size,
           color = TRUE,
           xlab = "variety",
           ylab = "size")
