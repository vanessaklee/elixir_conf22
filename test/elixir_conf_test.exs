defmodule ElixirConfTest do
  use ExUnit.Case
  doctest ElixirConf

  test "greets the world" do
    assert ElixirConf.hello() == :world
  end
end
