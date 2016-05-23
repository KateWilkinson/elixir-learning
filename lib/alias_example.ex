defmodule Aliases do
  def renaming_one do
    alias I.Am.For.Renaming, as: Aliased

    Aliased.say_hello
  end

  def renaming_two do
    alias I.Am.For.Renaming

    Renaming.say_hello
  end
end

defmodule I do
  defmodule Am do
    defmodule For do
      defmodule Renaming do
        def say_hello do
          IO.puts "HELLO!"
        end
      end
    end
  end
end
