defmodule OrderReader do
  import OrderLister

  def read(file) do
    File.open!(file)
      |> IO.stream(:line)
      |> Stream.drop(1)
      |> Stream.map(&transform_line/1)
      |> Enum.to_list
      |> list_orders(tax_rates)
  end

  defp tax_rates do
    [NC: 0.075, TX: 0.08]
  end

  defp transform_line(line) do
    list = String.trim_trailing(line, "\n") |> String.split(",")

    id = Enum.at(list, 0) |> String.to_integer
    ship_to = Enum.at(list, 1) |> String.trim_leading(":") |> String.to_atom
    net_amount = Enum.at(list, 2) |> String.to_float

    [id: id, ship_to: ship_to, net_amount: net_amount]
  end
end
