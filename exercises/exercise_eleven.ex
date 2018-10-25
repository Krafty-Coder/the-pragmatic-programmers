# ➤ Exercise: ListsAndRecursion-1

# Write a mapsum function that takes a list and a function. It applies the
# function to each element of the list and then sums the result, so
# iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
# 14


# ➤ Exercise: ListsAndRecursion-2

# Write a max(list) that returns the element with the maximum value in the
# list. (This is slightly trickier than it sounds.)
# An Elixir single-quoted string is actually a list of individual character
# codes. Write a caesar(list, n) function that adds n to each list element,
# wrapping if the addition results in a character greater than z.
# iex> MyList.caesar('ryvkve', 13)
# ?????? :)

myfunc = &(&1*&1)

defmodule Mylist do
  def mapsum([], func) do
    0
  end
  def mapsum(list, func) do
    Enum.map list
    |> func
  end
end

Mylist.mapsum([1,2,3,4], myfunc)
