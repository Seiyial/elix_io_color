defmodule IOC do
  @colors [
    number: :light_red,
    map: :yellow,
    atom: :cyan,
    regex: :light_red,
    tuple: :yellow,
    list: :yellow,
    reset: :light_blue,
    string: :light_red,
    boolean: :light_red,
    
    # not rly working
    struct: :yellow,
    mapset: :yellow
  ]

  defdelegate insp(value), to: __MODULE__, as: :inspect
  defdelegate insp(value, label), to: __MODULE__, as: :inspect

  def inspect(value, label) do
    IO.inspect(value, label: label, syntax_colors: @colors)
  end
  
  def inspect(value) do
    IO.inspect(value, syntax_colors: @colors)
  end


  def puts(string) do
    IO.puts(string, syntax_colors: @colors)
  end
end

defmodule IOColor do
  defdelegate insp(value, label), to: __MODULE__, as: :inspect
  defdelegate insp(value), to: __MODULE__, as: :inspect
  defdelegate inspect(value, label), to: IOC
  defdelegate inspect(value), to: IOC
  defdelegate puts(string), to: IOC
end

defmodule IOColored do
  defdelegate insp(value, label), to: __MODULE__, as: :inspect
  defdelegate insp(value), to: __MODULE__, as: :inspect
  defdelegate inspect(value, label), to: IOC
  defdelegate inspect(value), to: IOC
  defdelegate puts(string), to: IOC
end