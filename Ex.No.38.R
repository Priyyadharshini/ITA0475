library(ggplot2)
library(dplyr)
install.packages("titanic")
library(titanic)

data("Titanic")

titanic_df <- as.data.frame(Titanic)

ggplot(titanic_df, aes(x = Class, y = Freq, fill = factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Survival on the Titanic by Passenger Class",
       x = "Passenger Class",
       y = "Frequency",
       fill = "Survived") +
  theme_minimal()

ggplot(titanic_df, aes(x = Class, y = Freq, fill = factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~Sex) +
  labs(title = "Survival on the Titanic by Passenger Class and Gender",
       x = "Passenger Class",
       y = "Frequency",
       fill = "Survived") +
  theme_minimal()

titanic_data <- titanic_train

ggplot(titanic_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age on the Titanic",
       x = "Age",
       y = "Frequency") +
  theme_minimal()