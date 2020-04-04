defmodule PingPongtest do
  use ExUnit.Case

  test "test the ping" do
    PingPong.start("ping") == "ping"
  end

   test "test the pong" do
    PingPong.start("pong") == "pong"
  end
end
