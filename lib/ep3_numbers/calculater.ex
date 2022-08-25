defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`
  """
  alias BasicMath, as: Math

  @doc """
  Returns the `percentage` of given `value` rounded up to the nearest 100th.

  Returns `float`

  ## Parameters

  - percentage: number (integer or float)
  - value: number (integer or float)

  ## Examples

      iex> BasicMath.find_percentage_of_value(25, 100)
      25.0

      iex> BasicMath.find_percentage_of_value(23, 456)
      104.89

  """
  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)
    percentage
    |> BasicMath.divide(100)
    |> Math.multiply(value)
    |> Math.round_up()
  end
end
