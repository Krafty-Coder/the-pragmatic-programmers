# Write a function that takes three arguments. If the first two are zero,
# return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero,
# return “Buzz.” Otherwise return the third argument. Do not use any lan-
# guage features that we haven’t yet covered in this book.

# The operator rem(a, b) returns the remainder after dividing a by b . Write a
# function that takes a single integer ( n ) and calls the function in the previ-
# ous exercise, passing it rem(n,3) , rem(n,5) , and n . Call it seven times with
# the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13,
# 14, FizzBuzz, 16.”
# (Yes, it’s a FizzBuzz solution with no conditional logic.) 1

whichfizz = fn (0, 0, _) -> "FizzBuzz" (0, _, _) -> "Fizz" (_, 0, _) -> "Buzz" end

fizzbuzz = fn n -> whichfizz.(rem(n, 3), rem(n, 5), n) end

IO.inspect Enum.map(1..100, fizzbuzz)
