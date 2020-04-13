defmodule Parser do
  @moduledoc """
  A module to learn how to use behaviours in elixir
  """

  @callback parse(String.t()) :: {:ok, String.t()} | {:error, String.t()}
  @callback extensions() :: [String.t()]
end
