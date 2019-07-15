defmodule UrlShortenerWeb.LinksControllerTest do
  use UrlShortenerWeb.ConnCase
  
  @endpoint UrlShortenerWeb.Endpoint
  
  test "it can accept a valid post request and get a successful response", %{conn: conn} do
    conn = post(conn, Routes.links_path(@endpoint, :create), [long_url: "http://really-long-url.com", short_url: "abc123"])
    
    assert %{"long_url" => "http://really-long-url.com", "short_url" => "abc123"} = json_response(conn, 201)
  end
  
  test "it can redirect to a long URL from a short URL", %{conn: conn} do
    long_url = "http://another_really-long-url.com"
    short_url = "abc456"
    post_conn = post(conn, Routes.links_path(@endpoint, :create), [long_url: long_url, short_url: short_url])
    
    conn = get(conn, "/#{short_url}")
    
    assert long_url = redirected_to(conn)
  end
end