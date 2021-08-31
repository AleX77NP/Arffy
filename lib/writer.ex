defmodule Arffy.Writer do
  def write_content(path, data, attrs) do
    # write arff contents
    combined = combine_contents(get_header(), attrs, data)
    File.write(path, combined)
    end

  defp get_header() do
    # relation header
    "@relation 'my-arffy-relation'"
  end

  defp combine_contents(header, attrs, data) do
    # combine header, attributes and data into one large string, write only once
    "#{header}\n\n#{attrs}\n\n@data\n#{data}\n"
  end

end
