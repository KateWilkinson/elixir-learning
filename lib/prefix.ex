defmodule Prefix do
  def names(prefix) do
    fn(lastname)
      -> "#{prefix} #{lastname}"
    end
  end
end
