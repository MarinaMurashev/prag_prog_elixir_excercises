defmodule Chop do
  def guess(n, a..b) when n == div((b + a - 1), 2) do
    IO.puts n
  end

  def guess(n, a..b) when n > div((b + a - 1), 2) do
    val = div((b + a - 1), 2)

    IO.puts "Is it #{val}"

    guess(n, val..b)
  end

  def guess(n, a..b) when n < div((b + a - 1), 2) do
    val = div((b + a - 1), 2)

    IO.puts "Is it #{val}"

    guess(n, a..val)
  end
end
