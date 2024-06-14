library(datasets)
library(caret)
library(dplyr)
library(e1071) 
data(iris)

set.seed(123)

trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
iris_train <- iris[trainIndex,]
iris_test <- iris[-trainIndex,]

model <- glm(Species ~ Petal.Length + Petal.Width, data = iris_train, family = binomial)

pred_probs <- predict(model, iris_test, type = "response")

pred_classes <- ifelse(pred_probs > 0.5, "versicolor", "setosa")

conf_matrix <- confusionMatrix(factor(pred_classes, levels = levels(iris_test$Species)), iris_test$Species)

print(conf_matrix)
