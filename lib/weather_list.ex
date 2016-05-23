defmodule WeatherList do
  def location_1([]), do: []
  def location_1([ [time, 1, temp, rain] | tail]) do
    [[time, 1, temp, rain] | location_1(tail)]
  end
  def location_1([ _ | tail]), do: location_1(tail)

  def for_location([], location), do: []
  def for_location([ head = [_, location, _, _] | tail], location) do
    [ head | for_location(tail, location) ]
  end
  def for_location([ _ | tail], location), do: for_location(tail, location)
end
