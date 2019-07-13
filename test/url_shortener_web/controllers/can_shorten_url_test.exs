defmodule UrlShortenerWeb.LinksControllerTest do
  use UrlShortenerWeb.ConnCase
  
  @endpoint UrlShortenerWeb.Endpoint
  
  test "it can accept a valid post request and get a successful response", %{conn: conn} do
    conn = post(conn, Routes.links_path(@endpoint, :create), [link: "http://really-long-url.com"])
    
    assert json_response(conn, 201)
  end
  
  # test "it can accept a valid post request and respond with a short URL", %{conn: conn} do
  #   conn = post(conn, Routes.links_path(@endpoint, :create), [link: "http://really-long-url.com"])
  # 
  # 
  # end
end