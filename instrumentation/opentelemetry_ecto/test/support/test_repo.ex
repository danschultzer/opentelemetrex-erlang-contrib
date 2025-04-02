defmodule OpentelemetryEcto.TestRepo do
  use Ecto.Repo,
    otp_app: :opentelemetrex_ecto,
    adapter: Ecto.Adapters.Postgres,
    telemetry_prefix: [:opentelemetrex_ecto, :test_repo]
end
