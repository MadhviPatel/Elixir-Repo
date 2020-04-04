defmodule ElixirExamples.MathOperationsTest do
  use ExUnit.Case

  alias ElixirExamples.MathOperations

  test "add 8 and 7 equals 15" do
    assert MathOperations.add(8, 7) === 15
  end

  test "subtract 15 and 7 equals 8" do
    assert MathOperations.subtract(15, 7) === 8
  end

  test "multiply 6 and 7 equals 8" do
    assert MathOperations.mult(6, 7) === 42
  end

  test "divide  43 and 7 equals 6.14" do
    assert MathOperations.divide(43, 7) == 6.142857142857143
    assert round(MathOperations.divide(43, 7)) === 6
  end

  test "rem of 43 and 7 equals 1" do
    assert MathOperations.rem(43, 7) === 1
  end

  test "square of 11 equals 121" do
    assert MathOperations.square(11) === 121
  end

  test "negate of 121 equals -121" do
    assert MathOperations.negate(121) === -121
  end

  test "pi returns 3.14" do
    assert MathOperations.pi() == 3.142124
  end

end
