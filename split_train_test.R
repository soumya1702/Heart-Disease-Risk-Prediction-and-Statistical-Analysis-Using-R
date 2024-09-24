# Split the dataset into training and testing sets
set.seed(123)
train_index <- createDataPartition(df$target, p = 0.8, list = FALSE)
train_data <- df[train_index, ]
test_data <- df[-train_index, ]
