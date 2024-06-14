get_r_version <- function() {
  return(R.version.string)
}
main <- function() {
  name <- readline(prompt="Enter your name: ")
  age <- readline(prompt="Enter your age: ")
  
  # Display the user input
  cat("Name:", name, "\n")
  cat("Age:", age, "\n")
  
  cat("R Version:", get_r_version(), "\n")
}
main()