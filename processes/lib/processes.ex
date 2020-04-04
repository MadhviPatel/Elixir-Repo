defmodule PingPong do
  def start(msg) do
    parent = self()
    spawn(fn -> send_message(parent, msg) end)
    receive do
      {:pong, msg} -> IO.inspect "#{msg}"
      {:ping, msg} -> IO.inspect "#{msg}"
      _ -> IO.puts ":nothing"
    end
  end

  defp send_message(pid, msg) do
    case msg do
      "ping" -> send(pid, {:ping, :ping})
      "pong" -> send(pid, {:pong, :pong})
    end
  end
end
