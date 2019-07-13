defmodule UrlShortenerWeb.Router do
  use UrlShortenerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", UrlShortenerWeb do
    pipe_through :api
    resources "/links", LinksController
  end
end
