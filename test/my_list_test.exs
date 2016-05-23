defmodule MyListTest do
  use ExUnit.Case
  doctest MyList

  test "span returns the range of numbers between the 2 arguments given" do
    assert MyList.span(1, 10) === [1,2,3,4,5,6,7,8,9,10]
    assert MyList.span(3, 8) === [3,4,5,6,7,8]
  end
end
