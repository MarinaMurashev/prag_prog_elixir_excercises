defmodule OrderReader do
  import OrderLister

  def read(file) do
    File.open!(file)
      |> IO.stream(:line)
      |> Stream.drop(1)
      |> Stream.map(&(String.trim_trailing(&1, "\n")))
      |> Stream.map(&(String.split(&1, ",")))
      |> Stream.map(&([id: String.to_integer(Enum.at(&1, 0)), ship_to: String.to_atom(String.trim_leading(Enum.at(&1, 1), ":")), net_amount: String.to_float(Enum.at(&1, 2))]))
      |> Enum.to_list
      |> list_orders(tax_rates)
  end

  defp tax_rates do
    [NC: 0.075, TX: 0.08]
  end
end
