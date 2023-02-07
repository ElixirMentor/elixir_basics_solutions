defmodule Binaries do

  def get_png() do
    File.read!(Path.join("lib/ep12_binaries", "bs_logo.png"))
  end

  def get_jpg() do
    File.read!(Path.join("lib/ep12_binaries", "my_head.jpg"))
  end

  def get_heic() do
    File.read!(Path.join("lib/ep12_binaries", "IMG_9279.HEIC"))
  end

  @bmp_type "image/bmp"
  @jpg_type "image/jpeg"
  @png_type "image/png"
  @heic_type "image/heic"
  @unsupported "unsupported"

  def type_from_binary(file_binary) when binary_part(file_binary, 0, 8) == <<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A>>, do: {:ok, "image/png"}
  def type_from_binary(file_binary) when binary_part(file_binary, 0, 3) == <<0xFF, 0xD8, 0xFF>>, do: {:ok, "image/jpg"}
  def type_from_binary(_file_binary), do: {:error, "unknown"}

  def type_from_binary_pm(<<0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, _rest::bitstring>>), do: {:ok, "image/png"}
  def type_from_binary_pm(<<_ignore::binary-size(4), 0x66, 0x74, 0x79, 0x70, 0x68, 0x65, 0x69, 0x63, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x69, 0x66,
  0x31, _body::bitstring>>), do: @heic_type
  def type_from_binary_pm(_), do:  {:error, "unknown"}


end
