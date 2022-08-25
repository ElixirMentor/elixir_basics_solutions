defmodule BasicMath do
  @moduledoc """
  Documentation for `BasicMath`.
  """

  def add(a, b) do
    a + b
  end

  def subtract(a, b) do
    a - b
  end

  def multiply(a, b) do
    a * b
  end

  def divide(a, b) do
    a / b
    # div(a, b)
  end

  def absolute_value(value) do
    abs(value)
  end

  def round_up(value) do
    Float.ceil(value, 2)
  end

  def round_down(value) do
    Float.floor(value, 2)
  end

  def truncate_value(value) do
    trunc(value)
  end

  @doc """
  Returns binary string value given a integer `value`.

  Returns `string`

  ## Parameters

  - value: integer between 0 and 255

  ## Examples

      iex> BasicMath.int_to_binary(12)
      "00001100"

      iex> BasicMath.int_to_binary(255)
      "11111111"

  """
  @doc since: "0.1.0"
  def int_to_binary(value) when is_integer(value) do
    value
    |> Integer.to_string(2)
    |> String.pad_leading(8, "0")
  end
end
