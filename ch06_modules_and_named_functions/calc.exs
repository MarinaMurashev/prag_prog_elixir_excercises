defmodule Calc do
  def sum(2) do
    3
  end

  def sum(n) do
    n + sum(n - 1)
  end

  def gcd(x,0) do
    x
  end

  def gcd(x,y) do
    gcd(y, rem(x,y))
  end
end
