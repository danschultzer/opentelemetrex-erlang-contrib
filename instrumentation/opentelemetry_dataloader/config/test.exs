import Config

config :opentelemetrex_dataloader,
  ecto_repos: [OpentelemetryDataloader.TestRepo]

config :opentelemetrex_dataloader, OpentelemetryDataloader.TestRepo,
  hostname: "localhost",
  username: "postgres",
  password: "postgres",
  database: "opentelemetry_dataloader_test",
  pool: Ecto.Adapters.SQL.Sandbox

config :opentelemetry,
  processors: [{:otel_simple_processor, %{}}]
