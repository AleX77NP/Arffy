defmodule Arffy.Reader do

  def read_json_file(path) do
    with {:ok, file_contents} <- File.read(path) do
      with {:ok, list} = Poison.decode(file_contents) do # decode json to list of maps
        list
      end
    end
  end

  def read_csv_file(path) do
    # read csv file and transform it into the list of maps
    with {:ok, file_contents} <- File.read(path) do
      file_contents
      |> String.split("\n")
      |> Enum.map(&String.split(&1, ","))
      |> Enum.map(fn item -> Enum.with_index(item) end)
      |> Enum.map(fn item -> Enum.map(item, fn {v,k} -> {k,v} end) end)
      |> Enum.map(fn elem -> Enum.into(elem, %{}) end)
    end
  end

end
