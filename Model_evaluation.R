# ROC curve for Logistic Regression
library(pROC)
# ROC curve for Logistic Regression
log_roc <- roc(test_data$target, as.numeric(log_pred_class))
plot(log_roc, main = "ROC Curve Comparison")

# ROC curve for Random Forest
rf_roc <- roc(test_data$target, as.numeric(rf_pred))
plot(rf_roc, add = TRUE, col = "red")

# Calculate AUC for both models
log_auc <- auc(log_roc)
rf_auc <- auc(rf_roc)

print(paste("AUC Logistic Regression:", log_auc))
print(paste("AUC Random Forest:", rf_auc))

# Add legend to the ROC plot
legend("bottomright", legend = c("Logistic Regression", "Random Forest"), col = c("black", "red"), lwd = 2)
