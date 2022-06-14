defmodule RepoExceptionWeb.PageController do
  use RepoExceptionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
