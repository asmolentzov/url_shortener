# defmodule UrlShortener.LinkCreatorTest do
#   use ExUnit.Case
#   alias UrlShortener.LinkCreator
# 
#   test "takes a valid long URL and returns a short URL" do
#     url = "http://really-long-url.com"
#     short_link = LinkCreator.generate_short_link(url) 
#     # assume format http://localhost:4000/abc123
#     assert String.length(short_link) == 28
#   end
# end