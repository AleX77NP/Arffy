defmodule ArffyTest do
  use ExUnit.Case
  doctest Arffy

  test "json to arff" do
    assert Arffy.json_to_arff("/Users/aleksandar77np/desktop/test.json", "/Users/aleksandar77np/desktop/test.arff") == :ok
  end

  test "csv to arff" do
    assert Arffy.csv_to_arff("/Users/aleksandar77np/desktop/test2.csv", "/Users/aleksandar77np/desktop/test2.arff") == :ok
  end
end
