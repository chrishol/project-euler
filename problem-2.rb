# Problem 2

# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.

term1 = 1
term2 = 1
sum = 0

while true do
  current_term = term1 + term2
  break if current_term >= 4_000_000

  sum += current_term if current_term % 2 == 0
  term1 = term2
  term2 = current_term
end

puts sum
