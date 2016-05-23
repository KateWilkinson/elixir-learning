defmodule GuardTest do
  use ExUnit.Case
  doctest Guard

  test "returns 'is a number' if passed a number" do
    assert Guard.what_is(9) === "9 is a number"
  end

  test "returns 'is an atom' if passed an atom" do
    assert Guard.what_is(:hello) === "hello is an atom"
  end

  test "returns 'is a list' if passed a list" do
    assert Guard.what_is([1,2,3]) === "[1, 2, 3] is a list"
  end

  ## this doesn't work for strings, and note that for a list guard clause you need to inspect the list when using string interpolation.
end
