defmodule Recursion do
  @moduledoc """
  `Recursion` was created for episode 6 in Elixir Basics.
  """

  @doc """
  Returns the `equipment_list`.

  Returns `list` of `strings`

  ## Examples

      iex> LinkedLists.get_equipment_list()
      ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]

  """
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
  end

  def loop([]), do: nil
  def loop([head | tail]) do
    #Do something with head
    IO.puts(head)
    loop(tail)
  end

  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    [head |> format_string() | format_equipment_list(tail)]
  end

  def format_equipment_list_map(list) do
    Enum.map(list, fn x ->
      x
      |> String.downcase()
      |> String.replace(" ", "_")
    end)
  end

  def occurrence_count([], _value), do: 0
  def occurrence_count([_head | _tail], "Snacks"), do: 400
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)

  def partial_occurrence([], _value), do: []
  def partial_occurrence([head | tail], value) do
    if String.contains?(format_string(head), format_string(value)) do
       [format_string(head) | partial_occurrence(tail, value)]
    else
      partial_occurrence(tail, value)
    end
  end

  def format_string(value) do
    value |> String.downcase() |> String.replace(" ", "_")
  end

end
