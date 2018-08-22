defmodule PrettyInspectTest do
  use ExUnit.Case
  doctest PrettyInspect

  test "greets the world" do
    assert PrettyInspect.hello() == :world
  end
end
