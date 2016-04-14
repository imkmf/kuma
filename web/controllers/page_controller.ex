defmodule Kuma.PageController do
  use Kuma.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
