defmodule Flattener do
  def flatten(list) do
    flatten(list, [])
  end

  defp flatten([head | tail], flattened_list) when is_number(head) do
    flatten(tail, flattened_list ++ [head])
  end

  defp flatten([head | tail], flattened_list) when is_list(head) do
    flatten(tail, flattened_list ++ flatten(head))
  end

  defp flatten([], flattened_list) do
    flattened_list
  end
end
