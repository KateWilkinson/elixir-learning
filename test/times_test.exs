defmodule TimesTest do
  use ExUnit.Case
  doctest Times

  test "double doubles a number" do
    assert Times.double(4) === 8
  end

  test "triple triples a number" do
    assert Times.triple(4) === 12
  end

  test "quadruple quadruples a number" do
    assert Times.quadruple(4) === 16
  end
end
