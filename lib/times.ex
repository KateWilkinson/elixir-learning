defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n) do
    double(n) + n
  end

  def quadruple(n) do
    double(double(n))
  end
end
