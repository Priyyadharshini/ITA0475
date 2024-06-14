set.seed(123)
sample_letters <- sample(LETTERS, 15, replace = TRUE)

letters_factor <- factor(sample_letters)

print("Factor created from the random sample of LETTERS:")
print(letters_factor)

levels_of_factor <- levels(letters_factor)

if (length(levels_of_factor) >= 5) {
  five_levels <- levels_of_factor[1:5]
  print("Five levels of the factor:")
  print(five_levels)
} else {
  print("The factor does not have at least five levels.")
}
