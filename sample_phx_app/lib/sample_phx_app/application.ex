defmodule SamplePhxApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SamplePhxAppWeb.Telemetry,
      # Start the Ecto repository
      SamplePhxApp.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: SamplePhxApp.PubSub},
      # Start Finch
      {Finch, name: SamplePhxApp.Finch},
      # Start the Endpoint (http/https)
      SamplePhxAppWeb.Endpoint
      # Start a worker by calling: SamplePhxApp.Worker.start_link(arg)
      # {SamplePhxApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SamplePhxApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SamplePhxAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
