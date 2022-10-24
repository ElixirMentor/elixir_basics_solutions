defmodule SaucerPreflight do

  defp max_flying_load_lbs, do: 55

  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

  def get_total_load([]), do: 0
  def get_total_load([head | tail]) do
      (head
        |> EquipmentDetails.item_details()
        |> elem(0)
        |> convert_kg_to_lb()
      ) + get_total_load(tail)
  end

  def is_under_max_load?(list) do
    final_weight = get_total_load(list)
    if final_weight < max_flying_load_lbs() do
      true
    else
      false
    end
  end
end
