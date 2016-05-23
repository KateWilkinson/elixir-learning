defmodule PrefixTest do
  use ExUnit.Case
  doctest Prefix

  test "outer function returns a function" do
    inner_func = Prefix.names("Mr")
    assert is_function(inner_func)
  end

  test "inner function returns outer function argument + inner function argument" do
    inner_func = Prefix.names("Mr")
    assert inner_func.("Black") === "Mr Black"
  end
end
