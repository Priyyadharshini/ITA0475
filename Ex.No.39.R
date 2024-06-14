#1a)
# Load the USArrests dataset
data(USArrests)

# Explore the structure of the dataset
str(USArrests)

# Find the number of records for each feature
sapply(USArrests, function(x) sum(!is.na(x)))

summary(USArrests)

#1b)
max_rape_state <- USArrests$Rape[which.max(USArrests$Rape)]
rownames(USArrests)[which.max(USArrests$Rape)]

#1c)
max_murder_state <- USArrests$Murder[which.max(USArrests$Murder)]
rownames(USArrests)[which.max(USArrests$Murder)]

min_murder_state <- USArrests$Murder[which.min(USArrests$Murder)]
rownames(USArrests)[which.min(USArrests$Murder)]

#2a)
cor(USArrests)

#2b)
median_assault <- median(USArrests$Assault)

states_high_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
print(states_high_assault)

#2c)
q25_murder <- quantile(USArrests$Murder, 0.25)

states_low_murder <- rownames(USArrests)[USArrests$Murder < q25_murder]
print(states_low_murder)

#3a)
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Rate", col = "lightblue")

plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests", xlab = "Murder Rate")

#3b)
assault_palette <- colorRampPalette(c("blue", "red"))(length(unique(USArrests$Assault)))

plot(USArrests$UrbanPop, USArrests$Murder,
     main = "Murder Rate vs. Urban Population",
     xlab = "Proportion of Urban Population",
     ylab = "Murder Rate",
     col = assault_palette[rank(USArrests$Assault)],
     pch = 16)

legend("topright", legend = unique(USArrests$Assault),
       col = assault_palette, pch = 16,
       title = "Assault Rate")

#3c)
# Draw a bar graph of murder rates
barplot(USArrests$Murder, main = "Murder Rate by State",
        xlab = "State", ylab = "Murder Rate",
        names.arg = rownames(USArrests), col = "lightblue",
        las = 2)