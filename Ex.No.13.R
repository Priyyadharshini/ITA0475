random_normal_distribution <- function(n, mean = 0, sd = 1) {
  random_numbers <- rnorm(n, mean, sd)
  occurrences <- table(round(random_numbers, digits = 2))
  return(occurrences)
}

main <- function() {
  n <- as.integer(readline(prompt = "Enter the number of random numbers to generate: "))
  mean <- as.numeric(readline(prompt = "Enter the mean (default is 0)  or 0:"))
  sd <- as.numeric(readline(prompt = "Enter the standard deviation (default is 1):  or 1:"))
  occurrences <- random_normal_distribution(n, mean, sd)
  cat("\nOccurrences of each value:\n")
  print(occurrences)
}
main()