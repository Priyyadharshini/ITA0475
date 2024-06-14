data(ChickWeight)

ordered_data <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]

last_six <- tail(ordered_data, 6)
print(last_six)

melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(head(melted_data))

mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, mean)
print(mean_weight_by_diet)

mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mode)
print(mode_weight_by_diet)