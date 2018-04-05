defmodule BorkerWeb.PageController do
  use BorkerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
