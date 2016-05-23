defmodule MyList do
  def span(from, to) when from > to, do: []
  def span(from, to) do
    next = from + 1
    [from | span(next, to)]
  end
end
