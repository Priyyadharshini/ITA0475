unique_elements_string <- function(input_string) {
  unique_chars <- unique(strsplit(input_string, "")[[1]])  
  return(unique_chars)
}

unique_numbers_vector <- function(input_vector) {
  unique_nums <- unique(input_vector)  
  return(unique_nums)
}

main <- function() {
  input_string <- readline(prompt = "Enter a string: ")
  input_vector <- as.numeric(strsplit(readline(prompt = "Enter a vector of numbers (separated by spaces): "), " ")[[1]])
  unique_elements <- unique_elements_string(input_string)
  unique_numbers <- unique_numbers_vector(input_vector)
  cat("Unique elements of the string:", unique_elements, "\n")
  cat("Unique numbers of the vector:", unique_numbers, "\n")
}
