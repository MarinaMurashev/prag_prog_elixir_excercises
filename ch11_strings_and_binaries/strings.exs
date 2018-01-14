defmodule Strings do
  def all_asci?([]) do
    true
  end

  def all_asci?([head | tail]) do
    max_ascii_number = 127

    if head > max_ascii_number do
      false
    else
      all_asci?(tail)
    end
  end

  def anagram?(word1, word2) do
    Enum.sum(word1) == Enum.sum(word2)
  end

  def calculate(expression) do
    regex = ~r{(\d+)\s([+-\\*\/])\s(\d+)}

    [original | results] = Regex.run(regex, to_string(expression))

    first_value = string_to_int(results, 0)
    operator = Enum.at(results, 1)
    second_value = string_to_int(results, 2)

    calculate(operator, first_value, second_value)
  end

  defp calculate("+", n1, n2), do: n1 + n2
  defp calculate("-", n1, n2), do: n1 - n2
  defp calculate("*", n1, n2), do: n1 * n2
  defp calculate("/", n1, n2), do: n1 / n2

  defp string_to_int(results, i) do
    { result, _ } = Enum.at(results, i) |> Integer.parse()
    result
  end
end
