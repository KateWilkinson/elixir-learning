defmodule MapperTest do
  use ExUnit.Case
  doctest Mapper

  test "returns a list" do
    list = [1,2,3]
    double = fn(n) -> n * 2 end
    result = Mapper.map_this(list, double)
    assert is_list(result)
  end

  test "returns list with function applied to each element" do
    list = [1,2,3]
    double = fn(n) -> n * 2 end
    assert Mapper.map_this(list, double) === [2,4,6]
  end

  test "still works if I change the list" do
    list = [1,2,3,4,5]
    double = fn(n) -> n * 2 end
    assert Mapper.map_this(list, double) === [2,4,6,8,10]
  end

  test "still works if I change the function" do
    list = [1,2,3]
    triple = fn(n) -> n * 3 end
    assert Mapper.map_this(list, triple) === [3,6,9]
  end
end
