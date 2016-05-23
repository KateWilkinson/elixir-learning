defmodule DivisorTest do
  use ExUnit.Case
  doctest Divisor

  test "gcd provides the greatest common divisor between two numbers" do
    assert Divisor.gcd(20,15) === 5
  end
end
