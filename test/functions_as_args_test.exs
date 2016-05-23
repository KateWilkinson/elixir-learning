defmodule ArgsTest do
  use ExUnit.Case
  doctest Args

  test "multiplier takes function and argument and calls function with the argument" do
    double = fn(n) -> n * 2 end
    assert Args.multiplier(double, 5) === 10
  end
end
