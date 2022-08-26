defmodule CalculaterTest do
  use ExUnit.Case
  doctest Calculator

  describe "find_percentage_of_value/2" do
    test "returns correct percentage of value" do
      assert Calculator.find_percentage_of_value(25, 100) == 25.0
      assert Calculator.find_percentage_of_value(23, 456) == 104.89
    end
  end

  describe "find_distance_traveled/2" do
    test "returns correct distance traveled" do
      assert Calculator.find_distance_traveled(30, 2) == 60
      assert Calculator.find_distance_traveled(67, 2.8) == 187.6
    end
  end
end
