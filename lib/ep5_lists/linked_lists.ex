defmodule LinkedLists do
  @moduledoc """
  `LinkedLists` was created for episode 5 in Elixir Basics.
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

  @doc """
  Returns the first element of given `list`.

  Returns `element`

  ## Parameters

  - list: list

  ## Examples

      iex> LinkedLists.get_first_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      "Space Helmet"

  """
  def get_first_item(list) do
    hd(list)
  end

  @doc """
  Returns the tail of a `list`.

  Returns `element`

  ## Parameters

  - list: list

  ## Examples

      iex> LinkedLists.remove_first_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["Space Suit", "Snacks", "Grapling Hook", "Probe"]

  """
  def remove_first_item(list) do
    tl(list)
  end

  @doc """
  Returns a `list` with appended new `value` at end.

  Returns `list`

  ## Parameters

  - value: any
  - list: list

  ## Examples

      iex> LinkedLists.add_slow("new value", ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe", "new value"]

  """
  def add_slow(value, list) do
    list ++ [value]
  end

  @doc """
  Returns a `list` with appended new `value` at end.

  Returns `list`

  ## Parameters

  - value: any
  - list: list

  ## Examples

      iex> LinkedLists.add_fast("new value", ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe", "new value"]

  """
  def add_fast(value, list) do
    list
    |> Enum.reverse()
    |> prepend(value)
    |> Enum.reverse()
  end

  @doc """
  Returns a `list` with a `value` removed at specified `index`.

  Returns `list`

  ## Parameters

  - list: list
  - index: integer

  ## Examples

      iex> LinkedLists.remove_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], 2)
      ["Space Helmet", "Space Suit", "Grapling Hook", "Probe"]

  """
  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  @doc """
  Returns a `length` of a `list`.

  Returns `integer`

  ## Parameters

  - list: list

  ## Examples

      iex> LinkedLists.equipment_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"])
      5

  """
  def equipment_count(list) do
    length(list)
  end

  @doc """
  Returns a `boolean` if `item` exists in `list`.

  Returns `boolean`

  ## Parameters

  - list: list
  - item: any

  ## Examples

      iex> LinkedLists.check_for_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet")
      true

      iex> LinkedLists.check_for_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "vitamins")
      false

  """
  def check_for_item(list, item) do
    item in list
  end

  defp prepend(list, value) do
    [value | list]
  end
end
