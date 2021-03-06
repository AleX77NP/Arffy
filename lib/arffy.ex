defmodule Arffy do

  import Arffy.Reader
  import Arffy.Converter
  import Arffy.Writer
  @moduledoc """
  Documentation for `Arffy`.
  """

  @doc """
  JSON to ARFF.

  ## Examples

      iex> Arffy.json_to_arff("/Users/aleksandar77np/desktop/test.json", "/Users/aleksandar77np/desktop/test.arff")
      :ok

  """
  def json_to_arff(path_read, path_write) do
    json_data = read_json_file(path_read)
    item = hd(json_data)
    data = convert_to_arff_data(json_data)
    attributes = convert_to_arff_attributes(item, json_data)
    write_content(path_write, data, attributes)
  end

  @doc """
  CSV to ARFF.

  ## Examples

      iex> Arffy.csv_to_arff("/Users/aleksandar77np/desktop/test.csv", "/Users//aleksandar77np/desktop/test.arff")
      :ok

  """
  def csv_to_arff(path_read, path_write) do
    csv_data = read_csv_file(path_read)
    item = hd(csv_data)
    data = convert_to_arff_data(csv_data)
    attributes = convert_to_arff_attributes(item, csv_data)
    write_content(path_write, data, attributes)
  end

end
