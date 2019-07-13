defmodule UrlShortenerWeb.LinksControllerTest do
  use ExUnit.Case
  use Phoenix.ConnTest
  
  @endpoint UrlShortenerWeb.Endpoint
  
  test "it can accept URL post request" do
    conn = post(build_conn(), "/links", [link: "http://really-long-url.com"])
    
    assert json_response(conn, 201)
  end
end