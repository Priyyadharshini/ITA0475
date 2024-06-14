data(airquality)

summary_stats <- summary(airquality)
print(summary_stats)

library(reshape2)

melted_data <- melt(airquality)
print(head(melted_data))

melted_data <- melt(airquality, id.vars = c("Month", "Day"))
print(head(melted_data))

casted_data <- dcast(melted_data, Month + Day ~ variable)
print(head(casted_data))

melted_data <- melt(airquality, id.vars = "Month")

averages_per_month <- dcast(melted_data, Month ~ variable, mean, na.rm = TRUE)
print(averages_per_month)