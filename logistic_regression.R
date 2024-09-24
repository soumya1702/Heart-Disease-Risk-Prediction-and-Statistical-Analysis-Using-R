library(caret)
# Fit a logistic regression model
log_model <- glm(target ~ age + sex + chol + trestbps + cp, data = train_data, family = binomial)

# Summary of the logistic regression model
summary(log_model)

# Predicting on test data
log_pred <- predict(log_model, newdata = test_data, type = "response")
log_pred_class <- ifelse(log_pred > 0.5, 1, 0)

# Confusion matrix
confusionMatrix(as.factor(log_pred_class), test_data$target)
