defmodule ElixirExamples.MathOperations do
  @pi 3.142124

  def add(x, y), do: x + y
  def subtract(x, y), do: x - y
  def mult(x, y), do: x * y
  def divide(x, y), do: x / y
  def rem(x, y), do: Kernel.rem(x, y)
  def negate(x), do: -x
  def square(x), do: x * x
  def pi(), do: @pi
end
