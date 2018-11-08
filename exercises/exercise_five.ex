# Write a function prefix that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will
# return a string containing the first string, a space, and the second string.
# iex> mrs = prefix.("Mrs")
# #Function<erl_eval.6.82930912>
# iex> mrs.("Smith")
# "Mrs Smith"
# iex> prefix.("Elixir").("Rocks")
# "Elixir Rocks"

prefix = fn pr -> (fn name -> "#{pr} #{name}" end) end

prefix.("Mrs").("Monica")
