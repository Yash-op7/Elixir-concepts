defmodule MyFunctions do
  @pi 3.14
  def add, do: 2 + 2;
  def add(a) do
    IO.puts("ballz")
  end
  defp subtract(b, a), do: b - a
  def findArea(a), do: a * a * @pi;
end

MyFunctions.add(2)
