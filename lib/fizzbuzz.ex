defmodule Fizzbuzz do
  def play(n) do
    fizz_words.(rem(n,3), rem(n,5), n)
  end

  defp fizz_words() do
    fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _,_,value -> value
    end
  end
end
