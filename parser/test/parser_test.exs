defmodule Parser.JsonParserTest do
  use ExUnit.Case
  alias  Parser.JsonParser
  alias Parser.YamlParser

  test "json parser parses json" do
    assert JsonParser.parse("by the json parser") == {:ok, "A json is parsed by the json parser"}
  end

  test "json parser extension is json" do
    assert JsonParser.extensions() == ["json"]
  end

  test "yaml parser parses yml" do
    assert YamlParser.parse("by the yml parser") == {:ok, "A yaml is parserd by the yml parser"}
  end

  test "ymal parser extension is jsymlon" do
    assert YamlParser.extensions() == ["yml"]
  end

end
