# Perform t-test for age between males and females
t_test_result <- t.test(age ~ sex, data = df)
print(t_test_result)

# ANOVA to compare cholesterol across chest pain types
anova_result <- aov(chol ~ cp, data = df)
summary(anova_result)