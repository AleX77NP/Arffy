defmodule Arffy.Writer do

  def write_header(file) do
    IO.puts(file, "@relation 'my-arffy-relation'\n\n")
  end

  def write_data(file, data) do
    IO.puts(file,"@data\n#{data}")
  end

  def write_content(path, data) do
    with {:ok, file} <- File.open(path, [:append]) do
      write_header(file)
      write_data(file, data)
    end
  end

end
