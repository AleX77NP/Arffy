defmodule Arffy.Converter do

  def convert_to_arff_data(list) do
    list
    |> Enum.map(fn x -> Map.values(x) |> Enum.map(fn nil -> ""; x -> x end) |> Enum.join(",") end)
    |> Enum.join("\n") # convert list of maps to one large @datas tring
  end

  def convert_to_arff_attributes(elem) do
    elem
    |> Enum.map(fn {k, v} -> get_value(v, k) end) # get attributes string with name and type
    |> Enum.join("\n")
  end

  defp get_value(value, key) do
    cleaned_value = String.trim(to_string(value)) # if value is numeric, convert it to string first, so parse doesn't throw an error
    case Float.parse(cleaned_value) do # check if it can be a number
      :error -> "@attribute attr-#{key} string"
      {_v, _c} -> "@attribute attr-#{key} numeric"
    end
  end

end
