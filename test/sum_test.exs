defmodule SumTest do
  use ExUnit.Case
  doctest Sum

  test "calculates the sum of the integers from 1 to n" do
    assert Sum.add_integers(3) === 6
  end
end
