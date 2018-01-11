defmodule PrimeNumberLister do
  import Spanner

  def prime_numbers_until(number_limit) do
    for n <- span(2, number_limit), is_prime?(n), do: n
  end

  defp is_prime?(2) do
    true
  end

  defp is_prime?(number) do
    initial_diviser = 2
    is_prime?(number, initial_diviser)
  end

  defp is_prime?(number, number) do
    true
  end

  defp is_prime?(number, diviser) do
    if rem(number, diviser) == 0 do
      false
    else
      is_prime?(number, diviser + 1)
    end
  end
end
