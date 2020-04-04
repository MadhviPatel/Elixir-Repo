defmodule ElixirExamples.OperatorTest do
  use ExUnit.Case

  alias ElixirExamples.Operator
  alias ElixirExamples.MathOperations

  test "test for function square with 5 equals 25" do
    assert Operator.apply(&MathOperations.square/1, 5) === 25
  end

  test "test for function negate with 5 equals -5" do
    assert Operator.apply(&MathOperations.negate/1, 5) === -5
  end

  test "test for function add with 5 and 12 equals 17" do
    assert Operator.apply(&MathOperations.add/2, 5, 12) === 17
  end

  test "test for function divide with 15 and 4 equals 3.75" do
    assert Operator.apply(&MathOperations.divide/2, 15, 4) === 3.75
  end

  test "test for function multiply with 5 and 4  and then square equals 400" do
    assert Operator.apply(&MathOperations.mult/2, &MathOperations.square/1, 5, 4) === 400
  end

  test "anoymous function add with 6, 9 equals 15" do
    assert Operator.apply(fn (x, y) -> x + y end, 6, 9) === 15
  end

  test "shorthand function subtract 20, 7 equals 13" do
    assert Operator.apply(&(&1 - &2), 20, 7) === 13
  end

  test "shorthand function subtract 20, 7  and square equals 169" do
    assert Operator.apply(&(&1 - &2), &MathOperations.square/1,20, 7) === 169
  end
end
