data(iris)
print("Dimension of the iris dataset:")
print(dim(iris))

print("Structure of the iris dataset:")
print(str(iris))

print("Summary statistics of the iris dataset:")
print(summary(iris))

print("Standard Deviation of all features:")
sapply(iris[, 1:4], sd)

library(dplyr)
iris_grouped_stats <- iris %>%
  group_by(Species) %>%
  summarise(across(starts_with("Sepal"), list(mean = mean, sd = sd), .names = "Sepal.{col}_{fn}"),
            across(starts_with("Petal"), list(mean = mean, sd = sd), .names = "Petal.{col}_{fn}"))

print("Mean and Standard Deviation of features grouped by Species:")
print(iris_grouped_stats)

print("Quantile values of Sepal.Length:")
print(quantile(iris$Sepal.Length))

print("Quantile values of Sepal.Width:")
print(quantile(iris$Sepal.Width))

iris1 <- iris %>%
  mutate(Sepal.Length.Cate = cut(Sepal.Length, 
                                 breaks = quantile(Sepal.Length, probs = seq(0, 1, 0.25), na.rm = TRUE),
                                 include.lowest = TRUE))

print("New data frame iris1 with Sepal.Length.Cate:")
print(head(iris1))

avg_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(starts_with("Sepal"), mean, .names = "Avg_{col}"),
            across(starts_with("Petal"), mean, .names = "Avg_{col}"))

print("Average values of numerical variables by Species and Sepal.Length.Cate:")
print(avg_values)

avg_mean_values <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(across(starts_with("Sepal"), mean, .names = "Mean_{col}"),
            across(starts_with("Petal"), mean, .names = "Mean_{col}"))

print("Average mean values of numerical variables by Species and Sepal.Length.Cate:")
print(avg_mean_values)

library(tidyr)
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise(count = n(), .groups = 'drop') %>%
  pivot_wider(names_from = Sepal.Length.Cate, values_from = count, values_fill = 0)

print("Pivot Table based on Species and Sepal.Length.Cate:")
print(pivot_table)
