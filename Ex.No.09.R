find_factors <- function(number) {
  factors <- c()
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)  
    }
  }
  return(factors)
}

main <- function() {
  number <- as.integer(readline(prompt = "Enter a number to find its factors: "))
  factors <- find_factors(number)
  cat("Factors of", number, ":", factors, "\n")
}
main()