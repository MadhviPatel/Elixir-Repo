defmodule ElixirExamples.Operator do

  def apply(funct, data1), do: funct.(data1)

  def apply(funct, data1, data2), do: funct.(data1, data2)

  def apply(funct1, funct2, data1, data2) do
    result = funct1.(data1, data2)
    funct2.(result)
  end
end
