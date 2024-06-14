data(airquality)

num_missing <- sapply(airquality, function(x) sum(is.na(x)))
print(num_missing)

drop_cols <- names(num_missing[num_missing < 0.1 * nrow(airquality)])
airquality_dropped <- airquality[, !(names(airquality) %in% drop_cols)]

replace_cols <- names(num_missing[num_missing >= 0.1 * nrow(airquality)])
for (col in replace_cols) {
  mean_val <- mean(airquality[[col]], na.rm = TRUE)
  airquality[[col]][is.na(airquality[[col]])] <- mean_val
}

print(head(airquality))

airquality_filtered <- na.omit(airquality[, c("Ozone", "Solar.R")])

model <- lm(Ozone ~ Solar.R, data = airquality_filtered)
print(summary(model))

model <- lm(Ozone ~ Solar.R, data = airquality_filtered)

plot(airquality_filtered$Solar.R, airquality_filtered$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Ozone vs Solar.R")
abline(model, col = "red")