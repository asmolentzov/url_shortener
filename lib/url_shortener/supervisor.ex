defmodule UrlShortener.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    children = [
      worker(UrlShortener.Cache, [[name: UrlShortener.Cache]])
    ]

    supervise(children, strategy: :one_for_one)
  end
end