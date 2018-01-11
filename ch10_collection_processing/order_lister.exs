defmodule OrderLister do
  def list_orders(orders, tax_rates) do
    for order <- orders do
      tax_total = order[:net_amount] * (tax_rates[order[:ship_to]] || 0)
      Keyword.merge(order, [total_amount: (order[:net_amount] + tax_total)])
    end
  end
end
