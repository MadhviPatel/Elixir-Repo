defmodule HelloWorld do
  def hello_world do
    IO.puts("Hello world from elixir")
  end
end

ExUnit.start()

defmodule HelloWorldTest do
  use ExUnit.Case

  test "should return hellow world" do
    HelloWorld.hello_world() == "Hello world from elixir"
  end
end
