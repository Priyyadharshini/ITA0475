array1 <- array(1:9, dim = c(3, 3))
array2 <- array(10:18, dim = c(3, 3))
array3 <- array(19:27, dim = c(3, 3))

print("Array 1:")
print(array1)
print("Array 2:")
print(array2)
print("Array 3:")
print(array3)

combined_array <- rbind(array1[1, ], array2[1, ], array3[1, ],
                        array1[2, ], array2[2, ], array3[2, ],
                        array1[3, ], array2[3, ], array3[3, ])

print("Combined Array:")
print(combined_array)