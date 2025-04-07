import Config

config :opentelemetrex_oban,
  ecto_repos: [TestRepo]

config :opentelemetrex_oban, TestRepo,
  hostname: "localhost",
  username: "postgres",
  password: "postgres",
  database: "opentelemetry_oban_test",
  pool: Ecto.Adapters.SQL.Sandbox
