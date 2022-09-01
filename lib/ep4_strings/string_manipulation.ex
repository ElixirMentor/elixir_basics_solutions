defmodule StringManipulation do

  def first_letter(name) do
    String.trim(name)
    |> String.first()
  end

  def initial(name) do
    "#{String.capitalize(name) |> first_letter()}."
  end

  def initials(full_name) do
    list = String.split(full_name)
    value = ""
    Enum.map(list, fn name ->
      Enum.join([value, initial(name)], " ")
    end)
    |> List.to_string()
    |> String.trim()
  end

  def customize_spacecraft(full_name) do
    spacecraft_label = "******************** #{initials(full_name)}'s  SPACECRAFT ******************"

    IO.puts(
    """
                       %%%%%%%%%%%%%%%%%%%%
                  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    #{spacecraft_label}
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
            ,,,,&&&,,,,,&&&,,,,,&&&,,,,,&&&,,,,,&&&,,,,
                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    """
    )
  end
end
