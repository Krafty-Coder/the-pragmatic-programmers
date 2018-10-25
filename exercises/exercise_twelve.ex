# ➤ Exercise: ListsAndRecursion-4
# Write a function MyList.span(from, to) that returns a list of the numbers from
# from up to to .

defmodule MyList do
  def span(a, b) do
    Enum.to_list(a..b)
  end
end
