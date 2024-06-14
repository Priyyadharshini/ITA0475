create_random_vector <- function() {
  set.seed(123)
  random_vector <- sample(-50:50, 10,replace=TRUE)
  return(random_vector)
}
main <- function() {
  
  random <- create_random_vector()
  
  cat("Random vector of 10 integer values between -50 and +50:\n", random, "\n")
}
main()