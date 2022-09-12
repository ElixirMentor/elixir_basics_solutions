defmodule Recursion do
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
  end


  def format_equipment_list([]), do: []
  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail)]
  end

  def format_equipment_list_map(list) do
    Enum.map(list, fn x ->
      x
      |> String.downcase()
      |> String.replace(" ", "_")
    end)
  end

  def return_occurrences(equipment, value, occurrences \\ [])
  def return_occurrences([], _value, occurrences), do: occurrences
  def return_occurrences([head | tail], value, occurrences) do
    if String.contains?(head, String.downcase(value)) do
      return_occurrences(tail, value, [head | occurrences])
    else
      return_occurrences(tail, value, occurrences)
    end
  end




end
