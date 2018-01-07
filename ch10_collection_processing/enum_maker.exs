defmodule EnumMaker do
  def all?(collection, fun) do
    all(collection, fun)
  end

  defp all([], fun) do
    true
  end

  defp all([head | tail], fun) do
    if fun.(head) do
      all(tail, fun)
    else
      false
    end
  end

  def each(collection, fun) do
    for item <- collection do
      fun.(item)
    end
  end

  def filter(collection, fun) do
    filter_with_fun(collection, fun, [])
  end


  defp filter_with_fun([head | tail], fun, current) do
    if fun.(head) do
      filter_with_fun(tail, fun, current ++ [head])
    else
      filter_with_fun(tail, fun, current)
    end
  end

  defp filter_with_fun([], fun, current) do
    current
  end

  def split(collection, count) do
    split(collection, count, [], [])
  end

  defp split([head | tail], count, first, second) when length(first) < count do
    split(tail, count, first ++ [head], second)
  end

  defp split([head | tail], count, first, second) when length(first) >= count do
    split(tail, count, first, second ++ [head])
  end

  defp split([], count, first, second) do
    { first, second }
  end
end
