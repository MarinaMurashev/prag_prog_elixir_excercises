defmodule Spanner do
  def span(from, to) when to > from do
    [from | span(from + 1, to)]
  end

  def span(to, to), do: [to]
end
