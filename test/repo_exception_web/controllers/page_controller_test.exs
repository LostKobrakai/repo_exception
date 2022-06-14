defmodule RepoExceptionWeb.PageControllerTest do
  use RepoExceptionWeb.ConnCase

  test "Phoenix API – Not covered by Plug.Exception", %{conn: conn} do
    assert_raise Phoenix.ActionClauseError, fn ->
      get(conn, "/")
    end
  end

  test "HTTP - Covered by Plug.Exception" do
    {:ok, response} = HTTPoison.get("http://localhost:4002/")

    assert response.status_code == 400
    assert response.body == "Custom message"
  end
end
