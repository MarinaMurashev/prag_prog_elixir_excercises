defmodule MyList do
  def mapsum([], _) do
    0
  end

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([]) do
    nil
  end

  def max([a]) do
    a
  end

  def max([a, b]) do
    if a > b do
      a
    else
      b
    end
  end

  def max([head | tail]) do
    [comparison_element | rest] = tail

    max_of_two = max([head, comparison_element])

    max([max_of_two | rest])
  end

  def caesar([], n) do
    []
  end

  def caesar([head | tail], n) do
    [caesar_map(head, n) | caesar(tail, n)]
  end

  defp caesar_map(arg, n) do
    z_val = 122
    new_val = arg + n

    if (new_val > z_val), do: z_val, else: new_val
  end
end
