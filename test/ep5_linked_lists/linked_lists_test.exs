defmodule LinkedListsTest do
  use ExUnit.Case
  doctest LinkedLists

  describe "get_equipment_list/0" do
    test "returns static equipment list" do
      assert LinkedLists.get_equipment_list() == ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
    end
  end

  describe "get_first_item/1" do
    test "returns first element from list" do
      assert LinkedLists.get_first_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == "Space Helmet"
    end
  end

  describe "remove_first_item/1" do
    test "removes first element from list" do
      assert LinkedLists.remove_first_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == ["Space Suit", "Snacks", "Grapling Hook", "Probe"]
    end
  end

  describe "add_slow/2" do
    test "adds element to end of list" do
      assert LinkedLists.add_slow("new value", ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe", "new value"]
    end
  end

  describe "add_fast/2" do
    test "adds element to end of list" do
      assert LinkedLists.add_fast("new value", ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe", "new value"]
    end
  end

  describe "remove_item/2" do
    test "removes element from list at index" do
      assert LinkedLists.remove_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], 2) == ["Space Helmet", "Space Suit", "Grapling Hook", "Probe"]
    end
  end

  describe "equipment_count/1" do
    test "returns length of list" do
      assert LinkedLists.equipment_count(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]) == 5
    end
  end

  describe "check_for_item/2" do
    test "checks for value in list" do
      assert LinkedLists.check_for_item(["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"], "Probe") == true
    end
  end
end
