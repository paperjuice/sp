defmodule SpWeb.PropertyController do
  use SpWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def insert(conn, params) do
    IO.inspect(params, label: Params)
    redirect(conn, to:  "/")
  end
end
