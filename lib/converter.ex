defmodule Arffy.Converter do

  def convert_to_arff_data(list) do
    list
    |> Enum.map(fn x -> Map.values(x) |> Enum.map(fn nil -> ""; x ->x end) |> Enum.join(",") end)
    |> Enum.join("\n")
  end


end
