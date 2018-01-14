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
end
