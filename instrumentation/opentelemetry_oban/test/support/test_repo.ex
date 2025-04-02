defmodule TestRepo do
  use Ecto.Repo,
    otp_app: :opentelemetrex_oban,
    adapter: Ecto.Adapters.Postgres
end
