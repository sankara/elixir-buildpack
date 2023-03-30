defmodule SamplePhxApp.Repo do
  use Ecto.Repo,
    otp_app: :sample_phx_app,
    adapter: Ecto.Adapters.Postgres
end
