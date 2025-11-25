tuple = { :ok, "hello" }
index = 1
elem(tuple, index)
tuple_size(tuple)
new_tuple = put_elem(tuple, 1, "new elem")
# IO.puts(new_tuple) # ❌ throws because tuple is not a string or convertible to string inherently
IO.inspect(new_tuple)
