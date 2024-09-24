# Load packages
library(tidyverse)  # Data manipulation

# Load dataset
df <- read.csv("~/Downloads/heart.csv")

# View the first few rows
head(df)

# Summary statistics
summary(df)

# Check the structure
str(df)

# Check for missing values
colSums(is.na(df))
# If there are missing values, you can either drop them or impute them
# Convert some numerical columns into factors if they represent categories
df$sex <- as.factor(df$sex)
df$cp <- as.factor(df$cp)
df$fbs <- as.factor(df$fbs)
df$restecg <- as.factor(df$restecg)
df$exang <- as.factor(df$exang)
df$target <- as.factor(df$target)
