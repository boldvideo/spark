defmodule SparkWeb.ErrorJSONTest do
  use SparkWeb.ConnCase, async: true

  test "renders 404" do
    assert SparkWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert SparkWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
