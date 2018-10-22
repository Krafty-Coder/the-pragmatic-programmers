# Use the & notation to rewrite the following:
# – Enum.map [1,2,3,4], fn x -> x + 2 end
# – Enum.each [1,2,3,4], fn x -> IO.inspect x end

x = [1,2,3,4]

add_two = Enum.map x, &(&1+2)

inspect_each = Enum.map [1,2,3,4], &(IO.inspect(&1))
