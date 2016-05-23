defmodule Sum do
  def add_integers(0), do: 0
  def add_integers(n), do: n + add_integers(n-1)
end
