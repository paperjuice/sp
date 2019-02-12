defmodule SpWeb.Router do
  use SpWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SpWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/property", PropertyController, :index
    get "/property/new", PropertyController, :new
    post "/property/insert", PropertyController, :insert
  end
end
