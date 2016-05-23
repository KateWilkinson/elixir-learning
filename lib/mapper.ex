defmodule Mapper do
  def map_this([], _function), do: []
  def map_this([ head | tail ], function) do
    [ function.(head) | map_this(tail, function)]
  end
end
