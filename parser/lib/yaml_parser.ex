defmodule Parser.YamlParser do
  @moduledoc """
    A module that implements the behaviour called Parser
  """

  @behaviour Parser

  @impl Parser
  def parse(str), do: {:ok, "A yaml is parserd " <> str}

  @impl Parser
  def extensions(), do: ["yml"]
end
