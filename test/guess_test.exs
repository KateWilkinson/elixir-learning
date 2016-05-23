defmodule GuessTest do
  use ExUnit.Case
  doctest Guess
  import ExUnit.CaptureIO

  # this test is a bit rubbish - is there a way I can check the first line of the output without having to split the whole lot on newline characters?
  test "initial guess should be halfway between the upper and lower ends of the range" do
    result = capture_io(fn -> Guess.my_guess(100, 1..1000) end)
    assert String.contains?(result, "Is it 500?\n")
  end
end
