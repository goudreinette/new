defmodule NewTest do
  use ExUnit.Case
  doctest New

  test "template_path gives the correct path" do
    expected = "#{System.cwd()}/templates/elm"
    assert New.template_path("elm") == expected
  end

  test "target_path gives the correct path" do
    expected = "#{System.cwd()}/myapp"
    assert New.target_path("myapp") == expected
  end

  test "replace_name replaces ${name} with the given string" do
    input    = "<?php namespace ${name};"
    expected = "<?php namespace myapp;"
    assert New.replace_name(input, "myapp") == expected
  end
end
