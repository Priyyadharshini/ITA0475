extract_letters <- function() {
  first_10_lower <- letters[1:10]
  last_10_upper <- LETTERS[17:26]
  letters_22_to_24_upper <- LETTERS[22:24]
  
  cat("First 10 letters in lower case:\n", first_10_lower, "\n\n")
  cat("Last 10 letters in upper case:\n", last_10_upper, "\n\n")
  cat("Letters between 22nd to 24th in upper case:\n", letters_22_to_24_upper, "\n")
}
main <- function() {
  extract_letters()
}
main()