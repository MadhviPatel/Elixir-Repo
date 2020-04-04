defmodule ElixirExamples.FactorialTest do
  use ExUnit.Case

  alias ElixirExamples.Factorial

  test "factorial of 5 should be 6" do
    assert(Factorial.factorial(3)) === 120
  end

end
