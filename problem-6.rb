# Problem 6

# The sum of the squares of the first ten natural numbers is 385

# The square of the sum of the first ten natural numbers is 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 2640.

# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

start_n = 1
end_n = 100

sum_of_squares = (start_n..end_n).sum { |n| n ** 2 }
square_of_sum = (start_n..end_n).sum ** 2

puts square_of_sum - sum_of_squares
