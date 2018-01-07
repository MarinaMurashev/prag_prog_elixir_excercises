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
end
