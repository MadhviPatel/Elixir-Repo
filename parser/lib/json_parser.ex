defmodule Parser.JsonParser do
  @moduledoc """
   A module that implements the behaviour called Parser
  """
  @behaviour Parser

  @impl Parser
  def parse(str), do: {:ok, "A json is parsed " <> str}

  @impl Parser
  def extensions(), do: ["json"]
end
