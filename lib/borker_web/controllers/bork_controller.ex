defmodule BorkerWeb.BorkController do
  use BorkerWeb, :controller
  plug Coherence.Authentication.Session, [protected: true] when action != :index

  def index(conn, _params) do
    render conn, "index.html"
  end
end
