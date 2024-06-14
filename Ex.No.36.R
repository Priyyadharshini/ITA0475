data(ChickWeight)

boxplot(weight ~ Diet, data = ChickWeight, main = "Box Plot of Weight by Diet", xlab = "Diet", ylab = "Weight")

weights_diet1 <- ChickWeight$weight[ChickWeight$Diet == 1]

hist(weights_diet1, main = "Histogram of Weight for Diet-1", xlab = "Weight", ylab = "Frequency")

plot(ChickWeight$Time, ChickWeight$weight, main = "Scatter Plot of Weight vs Time by Diet", 
     xlab = "Time", ylab = "Weight", pch = as.integer(ChickWeight$Diet))
legend("topright", legend = levels(ChickWeight$Diet), pch = 1:4, title = "Diet")