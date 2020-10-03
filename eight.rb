# cerner_2^5_2020
# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.
# To print an array of the first N palindromic prime numbers.
# For example, the first 10 palindromic prime numbers are [2,3,5,7,11,101,131,151,181,191].

require 'prime'

palindrome_array = -> (n) do
    Prime.lazy.select { |x| x if x.to_s == x.to_s.reverse}.first(n)
end

n = gets.to_i

p palindrome_array.(n)
