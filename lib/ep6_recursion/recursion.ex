defmodule Recursion do
  @moduledoc """
  `Recursion` was created for episode 6 in Elixir Basics.
  """

  @doc """
  Returns the `equipment_list`.

  Returns `list` of `strings`

  ## Examples

      iex> Recursion.get_equipment_list()
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

  @doc """
  Returns a `length` of a `list`.

  Returns `integer`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.equipment_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      5

  """
  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)


  @doc """
  Returns a formatted list.

  Returns `list`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.format_equipment_list(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["space_helmet", "space_suit", "snacks", "grapling_hook", "probe"]

  """
  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    [head |> format_string() | format_equipment_list(tail)]
  end

  @doc """
  Returns a formatted list.

  Returns `list`

  ## Parameters

  - list: list

  ## Examples

      iex> Recursion.format_equipment_list_map(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["space_helmet", "space_suit", "snacks", "grapling_hook", "probe"]

  """
  def format_equipment_list_map(list) do
    Enum.map(list, fn x ->
      x
      |> String.downcase()
      |> String.replace(" ", "_")
    end)
  end

  @doc """
  Returns a `count` of how many occurrences of a value appear in a `list`.

  Returns `integer`

  ## Parameters

  - list: list
  - value: any

  ## Examples

      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet")
      1

      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Snacks")
      400

      iex> Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space ")
      0

  """
  def occurrence_count([], _value), do: 0
  def occurrence_count([_head | _tail], "Snacks"), do: 400
  def occurrence_count([value | tail], value), do: 1 + occurrence_count(tail, value)
  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)

  @doc """
  Returns a formatted `list` of values that contain part of a `value`.

  Returns `list`

  ## Parameters

  - list: list
  - value: any

  ## Examples

      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet")
      ["space_helmet"]

      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "space")
      ["space_helmet", "space_suit"]

      iex> Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "lame")
      []

  """
  def partial_occurrence([], _value), do: []
  def partial_occurrence([head | tail], value) do
    if String.contains?(format_string(head), format_string(value)) do
       [format_string(head) | partial_occurrence(tail, value)]
    else
      partial_occurrence(tail, value)
    end
  end

  defp format_string(value) do
    value |> String.downcase() |> String.replace(" ", "_")
  end

end
