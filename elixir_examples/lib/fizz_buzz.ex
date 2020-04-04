defmodule ElixirExamples.FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz.
  """

  def play(min, max) do
    Enum.each(min..max, &play/1)
  end

  defp play(num) when rem(num, 15) == 0 and num > 0, do: IO.puts("FizzBuzz")
  defp play(num) when rem(num, 3) == 0 and num > 0, do: IO.puts("Fizz")
  defp play(num) when rem(num, 5) == 0 and num > 0, do: IO.puts("Buzz")
  defp play(num), do: IO.puts(num)
end
