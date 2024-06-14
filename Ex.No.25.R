exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

print("Original Data Frame:")
print(exam_data)

extracted_data <- exam_data[c(3, 5), c(1, 3)]
print("Extracted 3rd and 5th Rows with 1st and 3rd Columns:")
print(extracted_data)

exam_data$country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
print("Data Frame with New Column 'country':")
print(exam_data)

new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country=c("India","India")
)
exam_data <- rbind(exam_data, new_exam_data)
print("Data Frame After Adding New Rows:")
print(exam_data)

sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score),]
print("Data Frame Sorted by 'name' and 'score':")
print(sorted_exam_data)

write.csv(exam_data, file = "exam_data.csv", row.names = FALSE)

exam_data_from_file <- read.csv("exam_data.csv")

print("Data Frame Information Read from the File:")
print(exam_data_from_file)
