sieve_of_eratosthenes <- function(n) {
  is_prime <- rep(TRUE, n)
  is_prime[1] <- FALSE 
  for (i in 2:sqrt(n)) {
    if (is_prime[i]) {
      is_prime[seq(i^2, n, i)] <- FALSE
    }
  }
  primes <- which(is_prime)
  return(primes)
}

main <- function() {
  upper_limit <- as.integer(readline(prompt="Enter the upper limit to find prime numbers: "))
  prime_numbers <- sieve_of_eratosthenes(upper_limit)
  cat("Prime numbers up to", upper_limit, ":\n", prime_numbers, "\n")
}
main()