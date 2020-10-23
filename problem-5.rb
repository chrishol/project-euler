# Problem 5

# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

n = 2_520

while true do
  n += 1
  next unless n.even?

  solution = true
  # No need to test every factor (if it divides 2 and 3, it divides 6, etc.)
  [3, 4, 5, 7, 9, 11, 13, 16, 17, 19].reverse_each do |factor|
    unless n % factor == 0
      solution = false
      break
    end
  end

  break if solution
end

puts n
