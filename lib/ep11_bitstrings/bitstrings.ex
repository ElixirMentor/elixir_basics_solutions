defmodule Bitstrings do

  # fly base FB
  # fly earth FE
  # hover H
  # tractor_beam_on T
  # tractor_beam_off O
  def encode_instruction(code_point) do
    case code_point do
      ?H -> 0b0000
      ?F -> 0b0001
      ?B -> 0b0010
      ?E -> 0b0100
      ?T -> 0b1000
      ?O -> 0b1001
    end
  end

  def decode_instution(encoded_code) do
    case encoded_code do
      0b0000 -> ?H
      0b0001 -> ?F
      0b0010 -> ?B
      0b0100 -> ?E
      0b1000 -> ?T
      0b1001 -> ?O
    end
  end

  def encode(instructions, encoded_value \\ <<0::size(0)>>)
  def encode([], encoded_value), do: encoded_value
  def encode([head | tail], encoded_value) do
    encode(tail, <<encoded_value::bitstring, encode_instruction(head)::4>>)
  end

  def decode(instuctions, decoded_value \\ '')
  def decode(<<0::0>>, decoded_value), do: decoded_value
  def decode(<<head::4, tail::bitstring>>, decoded_value) do
    decode(tail, decoded_value ++ [decode_instution(head)])
  end

end
