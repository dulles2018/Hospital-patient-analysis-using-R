library(tidyverse)
library(caret)

model_data <- data %>%
  select(age, length_of_stay, cost, readmitted)

# Train-test split
set.seed(123)
train_index <- createDataPartition(model_data$readmitted, p = 0.8, list = FALSE)

train <- model_data[train_index, ]
test <- model_data[-train_index, ]

# Logistic regression model
model <- glm(readmitted ~ ., data = train, family = binomial)

summary(model)

# Predictions
pred <- predict(model, test, type = "response")
