defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  describe "get_equipment_list/0" do
    test "returns static equipment list" do
      assert Recursion.get_equipment_list() == ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
    end
  end

end
