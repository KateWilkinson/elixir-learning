defmodule Guess do
  def my_guess(actual, range = low..high) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    current_guess(actual, guess, range)
  end

  def current_guess(actual, actual, _),
    do: IO.puts "Yes! It's #{actual}."

  def current_guess(actual, guess, _low..high)
    when guess < actual,
    do: my_guess(actual, guess+1..high)

  def current_guess(actual, guess, low.._high)
    when guess > actual,
    do: my_guess(actual, low..guess-1)
end
