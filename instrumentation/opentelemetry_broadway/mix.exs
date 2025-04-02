defmodule OpentelemetryBroadway.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :opentelemetrex_broadway,
      version: @version,
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      docs: [
        source_url_pattern:
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/blob/main/instrumentation/opentelemetry_broadway/%{path}#L%{line}",
        main: "OpentelemetryBroadway",
        extras: ["README.md"]
      ],
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      source_url:
        "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_broadway"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      files: ~w(lib .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_broadway",
        "OpenTelemetry Erlang" => "https://github.com/open-telemetry/opentelemetry-erlang",
        "OpenTelemetry Erlang Contrib (OpenTelemetrex Fork)" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib",
        "OpenTelemetry.io" => "https://opentelemetry.io"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:broadway, "~> 1.0"},
      {:opentelemetry_api, "~> 1.0"},
      {:opentelemetry_telemetry, "~> 1.0"},
      {:opentelemetry_semantic_conventions, "~> 0.2"},
      {:telemetry, "~> 0.4 or ~> 1.0"},
      {:opentelemetry, "~> 1.0", only: [:test]},
      {:opentelemetry_exporter, "~> 1.0", only: [:test]},
      {:ex_doc, "~> 0.36", only: [:dev], runtime: false}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
