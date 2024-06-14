vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

array_data <- c(vector1, vector2)

my_array <- array(array_data, dim = c(3, 3, 2))

print("3x3x2 Array:")
print(my_array)

print("Second row of the second matrix:")
print(my_array[2, , 2])

print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(my_array[3, 3, 1])
