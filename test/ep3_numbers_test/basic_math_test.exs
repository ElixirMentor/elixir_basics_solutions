defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "Convert 12 to Binary string" do
    assert BasicMath.int_to_binary(12) == "00001100"
  end

  test "Convert 255 to Binary string" do
    assert BasicMath.int_to_binary(255) == "11111111"
  end
end
