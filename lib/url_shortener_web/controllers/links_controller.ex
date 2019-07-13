defmodule UrlShortenerWeb.LinksController do
  use UrlShortenerWeb, :controller

  def create(conn, params) do
    conn
    |> put_status(201)
    |> json(%{})
  end
end
