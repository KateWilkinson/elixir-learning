defmodule Guard do
  def what_is(x) when is_number(x) do
    "#{x} is a number"
  end
  def what_is(x) when is_atom(x) do
    "#{x} is an atom"
  end
  def what_is(x) when is_list(x) do
    "#{inspect(x)} is a list"
  end
end
