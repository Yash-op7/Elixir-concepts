# # # Anonymous functions
# # add = fn a, b -> a + b end
# # IO.puts(add.(1, 2))
# # outcome = is_function(add)
# # IO.puts("#{outcome}")
# # outcome = is_function(add, 2);
# # IO.puts("#{outcome}")

# # closure_func = fn a, b -> add.(a, b) end
# # output = closure_func.(3, 2)
# # IO.puts("#{output}");

# x = 42;
# # (fn -> x = 0 end).()
# # IO.puts(x)

# g = fn
#   x, y when x > 0 -> x + y
#   0, y ->
#     IO.puts("This got matched");
#     x + 1;
#     y + 1;
#   x, y when x < 0 -> y - x
# end

# IO.puts(g.(1, 2))
# IO.puts(g.(-1, 2))
# IO.puts(g.(0, 2))

# fun = &is_function/2
# add = &+/2
# g2 = g

# # create an anonymous function which checks if a given function has an arity 2
# f1 = fn fun -> is_function(fun, 2) end


# defmodule C1 do
#   def func1(x, b) do
#     x + b
#   end
#   def func2(x, b), do: x - b
#   def func3(x, b) do
#     %{
#       :a => x,
#       b: 2
#     }
#   end
#   defp fun4(x, b), do: func1(x, b)
#   def public, do: :nothing

# end


# defmodule Circle do
#   @pi 3.14
#   def findArea(r) do
#     r * r * @pi
#   end
# end

# &Math.add/2


defmodule C1 do
  def fun(a, b) do
    a + b
  end
  defp privateFunction, do: fun(3, 3)
  def fun2, do: privateFunction()
end

output = C1.fun(1, 2)
output = C1.fun2()
IO.puts(output)

