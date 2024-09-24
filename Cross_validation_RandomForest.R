# Cross-validation for Random Forest
set.seed(123)
train_control_rf <- trainControl(method = "cv", number = 10)
rf_model_cv <- train(target ~ ., data = train_data, method = "rf", trControl = train_control_rf)
print(rf_model_cv)

