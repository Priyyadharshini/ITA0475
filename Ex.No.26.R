data("airquality")
is_data_frame <- is.data.frame(airquality)
print(paste("Is airquality a data frame?", is_data_frame))

ordered_airquality <- airquality[order(airquality$Ozone, airquality$Solar.R),]

modified_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c("Solar.R", "Wind"))]

print("Modified airquality data frame:")
print(modified_airquality)
