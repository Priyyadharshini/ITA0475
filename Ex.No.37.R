data(ChickWeight)

multi_reg_model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(summary(multi_reg_model))

new_data <- data.frame(Time = 10, Diet = as.factor(1)) 

predicted_weight <- predict(multi_reg_model, newdata = new_data)
print(predicted_weight)

error <- mean((ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1] - predicted_weight)^2)
print(error)