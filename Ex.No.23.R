vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
vector2 <- c(13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24)

array_data <- c(vector1, vector2)

my_array <- array(array_data, dim = c(3, 4, 2))

print("3x4x2 Array:")
print(my_array)
