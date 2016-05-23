defmodule HeadAndTail do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head|tail]), do: [head*head | square(tail)]

  def plus_one([]), do: []
  def plus_one([head|tail]), do: [head+1 | plus_one(tail)]

  def map([], _function), do: []
  def map([head|tail], function), do: [function.(head) | map(tail, function)]

  # This set up with the private methods is so that you don't have to remember to pass in the 0 that sets the original total when calling the method
  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head|tail], total), do: _sum(tail, head+total)

  def no_accumulator([]), do: 0
  def no_accumulator([head|tail]), do: head + no_accumulator(tail)

  def mapsum([], _function), do: 0
  def mapsum([head|tail], function), do: function.(head) + mapsum(tail, function)

  def max([x]), do: x
  def max([head|tail]), do: Kernel.max(head, max(tail))

  def caesar([], _n), do: ''
  def caesar([head | tail], n)
    when head+n <= ?z,
    do: [head + n | caesar(tail, n)]
  def caesar([head | tail], n),
    do: [head+n-26 | caesar(tail,n)]

  def swapper([]), do: []
  def swapper([ a, b | tail ]), do: [ b, a | swapper(tail)]
  def swapper([_]), do: raise "Can't swap a list with an odd number of elements"
end
