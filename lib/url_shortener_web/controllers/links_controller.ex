defmodule UrlShortenerWeb.LinksController do
  use UrlShortenerWeb, :controller

  def create(conn, params) do
    case UrlShortener.Urls.create_link(params) do
      {:ok, link} -> 
        conn
        |> put_status(201)
        |> json(%{long_url: link.long_url, short_url: link.short_url})
      {:error, error} -> 
        conn
        |> put_status(400)
        |> json(%{error: error})  
    end
  end
  
  def handle_short_link(conn, %{"short_url" => short_url}) do
    url = UrlShortener.Cache.fetch(short_url, fn -> 
      UrlShortener.Urls.get_by_short_link!(short_url)
    end)
    conn 
    |> redirect(external: url.long_url)
  end
end
