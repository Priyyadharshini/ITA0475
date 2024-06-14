find_max_min <- function(vector) {
  max_val <- max(vector)  
  min_val <- min(vector)  
  return(list(maximum = max_val, minimum = min_val))
}
main <- function() {
  vector <- readline(prompt = "Enter a vector of numbers (separated by spaces): ")
  vector <- as.numeric(strsplit(vector, " ")[[1]])
  result <- find_max_min(vector)
  cat("Maximum value:", result$maximum, "\n")
  cat("Minimum value:", result$minimum, "\n")
}
main()