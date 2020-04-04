defmodule ElixirExamples.FizzBuzzTest do
  use ExUnit.Case
  alias ElixirExamples.FizzBuzz
  doctest FizzBuzz

  test "prints fizz_buzz" do
    FizzBuzz.play(0, 15)
  end
end
