defmodule DepsProject.JsonConverter do
  @moduledoc """
  This module will convert from map to json and vice versa.
  """

  #Using Poison.encode to convert a map to json
  def convert_to_json(map) when is_map(map) do
    Poison.encode(map)
  end

  #Using Poison.encode! to convert a map to json
  def convert_to_json!(map) when is_map(map) do
    Poison.encode!(map)
  end

  #Using Poison.decode to convert a json to map
  def convert_from_json(json) do
    Poison.decode(json)
  end

  #Using Poison.decode! to convert a json to map
  def convert_from_json!(json) do
    Poison.decode!(json)
  end
end
