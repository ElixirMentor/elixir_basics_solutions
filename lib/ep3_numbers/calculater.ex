defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`
  """
  alias BasicMath, as: Math

  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)
    # 23, 456 -> 104.88000000000001
    percentage
    |> BasicMath.divide(100)
    |> Math.multiply(value)
    |> Math.round_up()
  end
end
