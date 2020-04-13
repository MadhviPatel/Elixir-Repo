defmodule DepsProject.JsonCOnverterTest do
  use ExUnit.Case
  alias DepsProject.JsonConverter

  test "convert from map to json" do
    map = %{a: 1, b: 2, c: 3, d: 4}
    expected_json = "{\"d\":4,\"c\":3,\"b\":2,\"a\":1}"
    assert JsonConverter.convert_to_json(map) == {:ok, expected_json}
  end

  test "convert from map to json using encode!" do
    map = %{x: 5, b: 2, f: 7, u: 9}
    expected_json = "{\"x\":5,\"u\":9,\"f\":7,\"b\":2}"
    assert JsonConverter.convert_to_json!(map) == expected_json
  end

  test "convert from json to map" do
    json = "{\"d\":4,\"c\":3,\"b\":2,\"a\":1}"
    expected_map = %{"a" => 1, "b" => 2, "c" => 3, "d" => 4}
    assert JsonConverter.convert_from_json(json) == {:ok, expected_map}
  end

  test "convert from json  to map using decode!" do
    json = "{\"d\":4,\"c\":3,\"b\":2,\"a\":1}"
    expected_map = %{"a" => 1, "b" => 2, "c" => 3, "d" => 4}
    assert JsonConverter.convert_from_json!(json) == expected_map
  end
end
