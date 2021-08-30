defmodule Arffy.Writer do

  def write_data(path, data) do
    with {:ok, file} <- File.open(path, [:append]) do
      IO.puts(file, data)
    end
  end

end
