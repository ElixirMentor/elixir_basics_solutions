defmodule LinkedLists do

  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
  end
  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_slow(value, list) do
    list ++ [value]
  end

  @spec add_fast(any, any) :: list
  def add_fast(value, list) do
    # list_reversed = Enum.reverse(list)
    # prepend_list = [value | list_reversed]
    # Enum.reverse(prepend_list)
    list
    |> Enum.reverse()
    |> prepend(value)
    |> Enum.reverse()
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def equipment_count(list) do
    length(list)
  end

  def check_for_item(list, item) do
    item in list
  end

  def prepend(list, value) do
    [value | list]
  end
end
