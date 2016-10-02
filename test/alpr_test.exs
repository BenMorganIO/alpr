defmodule AlprTest do
  use ExUnit.Case

  test "process license plate AE9 74H" do
    assert Alpr.process("./test/data/AE9 74H.jpg") == "AE974H"
  end
end
