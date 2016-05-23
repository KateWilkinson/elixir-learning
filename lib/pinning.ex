defmodule Pinning do
  def greeter(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_)     -> "goodbye"
    end
  end
end
