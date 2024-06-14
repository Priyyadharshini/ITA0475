data(airquality)

sum_temp <- sum(airquality$Temp, na.rm = TRUE)
num_observations <- sum(!is.na(airquality$Temp))
mean_temp <- sum_temp / num_observations

cat("Mean temperature:", mean_temp)

first_five_rows <- airquality[1:5, ]
print(first_five_rows)

selected_cols <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(selected_cols)

coldest_day <- which.min(airquality$Temp)
cat("The coldest day was on:", airquality$Month[coldest_day], "/", airquality$Day[coldest_day])

num_days <- sum(airquality$Wind > 17, na.rm = TRUE)
cat("Number of days with wind speed > 17 mph:", num_days)