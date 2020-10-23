# Problem 3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

n = 600_851_475_143

# The "this feels like cheating" method
require 'prime'

puts "Prime library method: #{Prime.prime_division(n)}"

# More brute force method
current_n = n
factors = []

(2..n).each do |factor|
  count = 0
  while current_n % factor == 0
    current_n = current_n / factor
    count += 1
  end
  factors << [factor, count] if count > 0
  break if current_n <= factor
end

puts "Iterate through factors method: #{factors}"
