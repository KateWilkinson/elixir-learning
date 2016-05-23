defmodule PinningTest do
  use ExUnit.Case
  doctest Pinning

  test "returns greeting if name matches that passed in argument" do
    hello = Pinning.greeter("Kate", "Bonjour")
    assert hello.("Kate") === "Bonjour Kate"
  end

  test "does not return greeting if name doesn't match" do
    hello = Pinning.greeter("Kate", "Bonjour")
    assert hello.("Bob") != "Bonjour Kate"
  end

  test "says goodbye if name doesn't match" do
    hello = Pinning.greeter("Kate", "Bonjour")
    assert hello.("Bob") === "goodbye"
  end
end
