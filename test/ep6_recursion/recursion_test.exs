defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  describe "get_equipment_list/0" do
    test "returns static equipment list" do
      assert Recursion.get_equipment_list() == ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
    end
  end

  describe "equipment_count/1" do
    test "returns length of list" do
      assert Recursion.equipment_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == 5
    end
  end

  describe "format_equipment_list/1" do
    test "returns formatted list" do
      assert Recursion.format_equipment_list(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == ["space_helmet", "space_suit", "snacks", "grapling_hook", "probe"]
    end
  end

  describe "format_equipment_list_map/1" do
    test "returns formatted list" do
      assert Recursion.format_equipment_list_map(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == ["space_helmet", "space_suit", "snacks", "grapling_hook", "probe"]
    end
  end

  describe "occurrence_count/2" do
    test "returns occurrences of value from list" do
      assert Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Probe") == 1
      assert Recursion.occurrence_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "vitamins") == 0
    end
  end

  describe "partial_occurrence/2" do
    test "Returns a formatted `list` of values that contain part of a `value`" do
      assert Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Space Helmet") == ["space_helmet"]
      assert Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "vitamins") == []
      assert Recursion.partial_occurrence(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "space") == ["space_helmet", "space_suit"]
    end
  end

end
