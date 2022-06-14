defmodule RepoExceptionWeb.PageController do
  use RepoExceptionWeb, :controller

  def index(conn, %{"abc" => _}) do
    render(conn, "index.html")
  end
end
