defmodule CalculaterTest do
  use ExUnit.Case
  doctest Calculator

  test "Calculate 25% of 100" do
    assert Calculator.find_percentage_of_value(25, 100) == 25.0
  end

  test "Calculate 23% of 456" do
    assert Calculator.find_percentage_of_value(23, 456) == 104.89
  end
end
