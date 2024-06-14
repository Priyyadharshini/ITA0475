values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
dimensions <- c(3, 2, 2)  
my_array <- array(values, dim = dimensions)
dimnames(my_array) <- list(
  Row = c("Row1", "Row2", "Row3"),
  Column = c("Col1", "Col2"),
  Layer = c("Layer1", "Layer2")
)
print(my_array)