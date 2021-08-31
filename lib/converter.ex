defmodule Arffy.Converter do

  def convert_to_arff_data(list) do
    list
    |> Enum.map(fn x -> Map.values(x) |> Enum.map(fn nil -> ""; x -> x end) |> Enum.join(",") end)
    |> Enum.join("\n") # convert list of maps to one large @datas tring
  end

  def convert_to_arff_attributes(elem, list) do
    elem
    |> Enum.map(fn {k, v} -> get_value(v, k, list) end) # get attributes string with name and type
    |> Enum.join("\n")
  end

  defp get_value(value, key, list) do
    {classes, count} = get_classes(list)
    cleaned_value = String.trim(to_string(value)) # if value is numeric, convert it to string first, so parse doesn't throw an error
    case Float.parse(cleaned_value) do # check if it can be a number # "@attribute attr-#{key} string"
      :error ->
        case check_nominal(classes, count) do # check if class is nominal
          {:nominal, final} -> if value in classes, do: "@attribute attr-#{key} #{final}", else: "@attribute attr-#{key} string"
          {:notnominal} -> "@attribute attr-#{key} string"
        end
      {_v, _c} -> case check_nominal(classes, count) do # check if class is nominal
          {:nominal, final} -> if to_string(cleaned_value) in classes, do: "@attribute attr-#{key} #{final}", else: "@attribute attr-#{key} numeric"
          {:notnominal} -> "@attribute attr-#{key} numeric"
        end
    end
  end

  def get_classes(list) do
    list
    |> Enum.map(fn x -> Map.values(x) end)
    |> Enum.map(fn x -> hd(Enum.reverse(x)) end)
    |> Enum.filter(fn x -> x != "" end)
    |> refactor_class()

  end

  def check_nominal(values, count) do
    if count > 3 do
      {:notnominal}
    else
      final = Enum.join(values, ",")
      {:nominal, "{#{final}}"}
    end
  end

  defp refactor_class(list) do
    values = Enum.uniq(list)
    count = Enum.count(values)
    {values, count}
  end

end
