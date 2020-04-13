defmodule ElixirExamples.TypeSpecsTest do
  use ExUnit.Case

  alias ElixirExamples.TypeSpecs

  test "hello_world should return an atom " do
    assert TypeSpecs.hello_world == :hello_world
  end

  test "hello should accepts a string return an string " do
    assert TypeSpecs.hello("Madhvi") == "Hello Madhvi !"
  end

  test "bye should accepts a string return an string " do
    assert TypeSpecs.bye("Madhvi") == "Bye, see again Madhvi !"
  end
end
