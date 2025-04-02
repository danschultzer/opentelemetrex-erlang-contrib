defmodule OpentelemetryDataloader.TestRepo do
  use Ecto.Repo,
    otp_app: :opentelemetrex_dataloader,
    adapter: Ecto.Adapters.Postgres
end
