defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "returns 'Fizz' when passed a multiple of 3" do
    assert Fizzbuzz.play(9) === "Fizz"
  end

  test "returns 'Buzz' when passed a multiple of 5" do
    assert Fizzbuzz.play(10) === "Buzz"
  end

  test "returns 'FizzBuzz' when passed a multiple of 15" do
    assert Fizzbuzz.play(30) === "FizzBuzz"
  end
end
