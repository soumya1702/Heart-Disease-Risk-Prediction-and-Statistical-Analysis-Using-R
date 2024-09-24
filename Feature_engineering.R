# Adding interaction terms for feature engineering
train_data$age_chol <- train_data$age * train_data$chol
train_data$age_cp <- train_data$age * as.numeric(train_data$cp)

# Fit logistic regression with interaction terms
log_model_interaction <- glm(target ~ age + sex + chol + trestbps + cp + age_chol + age_cp, data = train_data, family = binomial)
summary(log_model_interaction)

