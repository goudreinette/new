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

  test "pascal_case returns the pascalcased version of a string" do
    input = "checkout-field-editor"
    expected = "CheckoutFieldEditor"
    assert New.pascal_case(input) == expected
  end

  test "title_case returns the titlecased version of a string" do
    input = "checkout-field-editor"
    expected = "Checkout Field Editor"
    assert New.title_case(input) == expected
  end
end
