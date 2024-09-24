# Load packages
library(tidyverse)  # Data manipulation
library(reshape2)
library(ggplot2)
library(corrplot)

# Visualize the distribution of age, cholesterol, and blood pressure

ggplot(df, aes(x = age)) + 
  geom_histogram(bins = 10, fill = "blue", alpha = 0.5) + 
  ggtitle("Distribution of Age")

ggplot(df, aes(x = chol)) + 
  geom_histogram(bins = 10, fill = "green", alpha = 0.5) + 
  ggtitle("Distribution of Cholesterol")

ggplot(df, aes(x = trestbps)) + 
  geom_histogram(bins = 10, fill = "green", alpha = 0.5) + 
  ggtitle("Distribution of bp")


# Correlation matrix for numeric variables
numeric_columns <- df %>% select_if(is.numeric)
corr_matrix <- cor(numeric_columns)

# Visualize the correlation matrix
corrplot(corr_matrix, method = "circle")

#or 
# Visualizing the correlation matrix
melted_corr_matrix <- melt(corr_matrix)
ggplot(melted_corr_matrix, aes(Var1, Var2, fill = value)) +
  geom_tile() +
  geom_text(aes(label = round(value, 2))) +
  scale_fill_gradient2(low = "red", high = "green", mid = "white", midpoint = 0) +
  theme_minimal()

# Boxplot: Compare age distribution based on the presence of heart disease
ggplot(df, aes(x = target, y = age)) + 
  geom_boxplot() + 
  ggtitle("Age vs Heart Disease")

# Bar plot for chest pain type (cp) vs target
ggplot(df, aes(x = cp, fill = target)) + 
  geom_bar(position = "dodge") + 
  ggtitle("Chest Pain Type vs Heart Disease")
