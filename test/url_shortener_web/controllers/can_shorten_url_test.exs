defmodule UrlShortenerWeb.LinksControllerTest do
  use UrlShortenerWeb.ConnCase
  
  @endpoint UrlShortenerWeb.Endpoint
  
  test "it can accept URL post request", %{conn: conn} do
    conn = post(conn, Routes.links_path(@endpoint, :create), [link: "http://really-long-url.com"])
    
    assert json_response(conn, 201)
  end
end