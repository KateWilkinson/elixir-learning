defmodule Example do
  def example_one do
    List.flatten([1,2,[3,4]])
  end
  def example_two do
    import List
    flatten([5,[6,7],8])
  end
  def example_three do
    import String, only: [contains?: 2]
    contains?("Hello", "e")
  end
  def example_four do
    import List, only: :functions
    IO.puts first([1,2,3,4])
    IO.puts last([1,2,3,4])
  end
end
