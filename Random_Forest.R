# Install and load the randomForest package if necessary
library(randomForest)
library(caret)

# Train a random forest model
rf_model <- randomForest(target ~ ., data = train_data, importance = TRUE)

# Predictions on the test set
rf_pred <- predict(rf_model, newdata = test_data)

# Confusion matrix for Random Forest
confusionMatrix(rf_pred, test_data$target)

# Feature importance
importance(rf_model)
