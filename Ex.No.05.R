generate_fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i - 1] + fib[i - 2]
  }
  return(fib)
}
main <- function() {
  num_fibonacci <- 10
  fibonacci_numbers <- generate_fibonacci(num_fibonacci)
  cat("The first 10 Fibonacci numbers:\n", fibonacci_numbers, "\n")
}
main()