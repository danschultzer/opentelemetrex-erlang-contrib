defmodule OpentelemetryOban.MixProject do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :opentelemetrex_oban,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        source_url_pattern:
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/blob/main/instrumentation/opentelemetry_oban/%{path}#L%{line}",
        main: "OpentelemetryOban",
        extras: ["README.md"]
      ],
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      source_url:
        "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_oban"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  defp package do
    [
      description: "OpenTelemetry tracing for Oban",
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_oban",
        "OpenTelemetry Erlang" => "https://github.com/open-telemetry/opentelemetry-erlang",
        "OpenTelemetry Erlang Contrib (OpenTelemetrex Fork)" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib",
        "OpenTelemetry.io" => "https://opentelemetry.io"
      },
      files: ~w(lib .formatter.exs mix.exs README* LICENSE* CHANGELOG*)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:oban, "~> 2.0"},
      {:opentelemetry_api, "~> 1.2"},
      {:opentelemetry_telemetry, "~> 1.1"},
      {:opentelemetry_semantic_conventions, "~> 0.2"},
      {:opentelemetry, "~> 1.0", only: [:test]},
      {:opentelemetry_exporter, "~> 1.0", only: [:test]},
      {:telemetry, "~> 0.4 or ~> 1.0"},
      {:ex_doc, "~> 0.36", only: [:dev], runtime: false},
      {:postgrex, ">= 0.0.0", only: [:dev, :test]}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
