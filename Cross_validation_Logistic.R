# Cross-validation for Logistic Regression
set.seed(123)
train_control <- trainControl(method = "cv", number = 10)
log_model_cv <- train(target ~ age + sex + chol + trestbps + cp, data = train_data, method = "glm", family = "binomial", trControl = train_control)
print(log_model_cv)
