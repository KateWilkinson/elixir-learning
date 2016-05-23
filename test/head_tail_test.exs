defmodule HeadTailTest do
  use ExUnit.Case
  doctest HeadAndTail

  test "function len should return the length of any given list" do
    assert HeadAndTail.len([1,2,3]) === 3
    assert HeadAndTail.len([]) === 0
  end

  test "character list is printed if the numbers in a list match to printable characters" do
    assert IO.inspect [99,100,101] === 'cde'
  end

  test "function square returns list containing square of each item in the original list" do
    assert HeadAndTail.square([1,2,3]) === [1,4,9]
  end

  test "function plus_one returns list containing each item in original list + 1" do
    assert HeadAndTail.plus_one([1,2,3]) === [2,3,4]
  end

  test "function map applies passed function to each item in original list" do
    assert HeadAndTail.map([1,2,3], fn (n) -> n + n end) === [2,4,6]
    assert HeadAndTail.map([1,2,3], fn (n) -> Integer.to_string(n) end) === ["1","2","3"]
  end

  test "function map works using shortcut notation" do
    assert HeadAndTail.map([1,2,3], &(&1 === 1)) === [true, false, false]
  end

  test "can keep hold of a running total whilst using recursion" do
    assert HeadAndTail.sum([1,2,3]) === 6
  end

  test "can sum using recursion without passing a running total" do
    assert HeadAndTail.no_accumulator([1,2,10]) === 13
  end

  test "function mapsum applies passed function to each item in list and sums result" do
    assert HeadAndTail.mapsum([1,2,3], &(&1 + 1)) === 9
  end

  test "function max returns the element with the highest value from a list" do
    assert HeadAndTail.max([1,4,7,6]) === 7
  end

  test "function caesar takes a char list and moves each char on by the given number" do
    assert HeadAndTail.caesar('abcd', 2) === 'cdef'
  end

  test "swapper should return the list with pairs of items swapped" do
    numbers = [1,2,3,4,5,6]
    words = ["cat", "dog", "rabbit", "pony"]
    assert HeadAndTail.swapper(numbers) === [2,1,4,3,6,5]
    assert HeadAndTail.swapper(words) === ["dog", "cat", "pony", "rabbit"]
  end

  test "swapper generates a runtime error if original list has an odd number of items" do
    numbers = [1,2,3]
    assert_raise(RuntimeError, "Can't swap a list with an odd number of elements", fn -> HeadAndTail.swapper(numbers) end)
  end
end
