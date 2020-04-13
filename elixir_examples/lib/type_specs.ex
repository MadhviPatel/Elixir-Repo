defmodule ElixirExamples.TypeSpecs do
  @moduledoc """
  A module to learn about @spec and @type, @typep and @typedoc
  """

  @typedoc """
  name() is an custom type which takez string value.
  """
  # @type is nused to define custom type.
  @type name() :: String.t()

  # @spec is used for defining the function spec/header along with its retun type
  @spec hello_world() :: atom()
  def hello_world() do
    :hello_world
  end

  @spec hello(name) :: String.t()
  def hello(name) do
    "Hello #{name} !"
  end

  @spec bye(name) :: String.t()
  def bye(name) do
    "Bye, see again #{name} !"
  end

end
