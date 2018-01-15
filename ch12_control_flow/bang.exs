defmodule Bang do
  def ok!(operation) do
    case operation do
    {:ok, result} -> result
    {:error, message} -> raise "Failed due to #{message}"
    end
  end
end
