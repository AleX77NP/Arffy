defmodule Arffy.Converter do

  def convert_to_arff_data(list) do
    list
    |> Enum.map(fn x -> Map.values(x) |> Enum.map(fn nil -> ""; x -> x end) |> Enum.join(",") end)
    |> Enum.join("\n")
  end

  def convert_to_arff_attributes(elem) do
    elem
    |> Enum.map(fn {k, v} -> get_value(v, k) end)
    |> Enum.join("\n")
  end

  defp get_value(value, key) do
    case Float.parse(value) do
      :error -> "@attribute attr-#{key} string"
      {_v, _c} -> "@attribute attr-#{key} numeric"
    end
  end

end
