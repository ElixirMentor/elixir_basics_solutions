defmodule Calculator do
  @moduledoc """
  `Calculator` was created for episode 3 in Elixir Basics.
  """

  @doc """
  Returns the `percentage` of given `value` rounded up to the nearest 100th.

  Returns `float`

  ## Parameters

  - percentage: number (integer or float)
  - value: number (integer or float)

  ## Examples

      iex> Calculator.find_percentage_of_value(25, 100)
      25.0

      iex> Calculator.find_percentage_of_value(23, 456)
      104.89

  """
  def find_percentage_of_value(percentage, value) do
    percentage
    |> BasicMath.divide(100)
    |> BasicMath.multiply(value)
    |> BasicMath.round_up()
  end

  @doc """
  Returns the `distance` traveled when given `speed` and `time`.

  Returns `number`

  ## Parameters

  - speed: number (integer or float)
  - time: number (integer or float)

  ## Examples

      iex> Calculator.find_distance_traveled(30, 2)
      60

      iex> Calculator.find_distance_traveled(67, 2.8)
      187.6

  """
  def find_distance_traveled(speed, time) do
    # Code challenge -
    # Make sure to use the pipe operator and exisiting functions we already created to solve this.
    # Given the formula `Speed = Distance / Time`
    # Calculate the `distance` traveled when given the `speed` and `time`
    # Round the value up to the nearest 100th.
    speed
    |> BasicMath.multiply(time)
    |> BasicMath.round_up()
  end
end
