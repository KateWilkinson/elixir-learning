defmodule WeatherListTest do
  use ExUnit.Case
  doctest WeatherList

  defp data, do: [
    [1306, 1, 12, 3],
    [1307, 1, 13, 3],
    [1422, 2, 12, 2]
  ]

  test "location_1 returns weather records for location 1" do
    expected_records = [[1306, 1, 12, 3], [1307, 1, 13, 3]]
    assert WeatherList.location_1(data) === expected_records
  end

  test "location_1 does not return weather records for location 2" do
    not_expected_record = [[1422, 2, 12, 2]]
    assert WeatherList.location_1(data) != not_expected_record
  end

  test "for_location returns records for location given" do
    location_1_records = [[1306, 1, 12, 3], [1307, 1, 13, 3]]
    location_2_records = [[1422, 2, 12, 2]]
    assert WeatherList.for_location(data, 1) === location_1_records
    assert WeatherList.for_location(data, 2) === location_2_records
  end

  test "for_location returns empty array if no records for given location" do
    assert WeatherList.for_location(data, 3) === []
  end
end
