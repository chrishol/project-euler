# Problem 4

# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def is_palindromic?(n)
  n.digits == n.digits.reverse
end

start_n = 101
end_n = 999

highest_found = 0

(start_n..end_n).reverse_each do |number_1|
  (start_n..end_n).reverse_each do |number_2|
    product = number_1 * number_2
    next if product < highest_found

    highest_found = product if is_palindromic?(product)
  end
end

puts highest_found
