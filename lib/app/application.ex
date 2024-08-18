defmodule App.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  # * Remember that starting the application amounts to calling the start/2 function
  # * from the callback module.

  use Application
  # * Callback Function
  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: App.Worker.start_link(arg)
      # {App.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: App.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
