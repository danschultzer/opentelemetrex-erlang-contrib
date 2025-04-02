defmodule OpentelemetryXandra.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Trace Xandra queries with OpenTelemetry."

  def project do
    [
      app: :opentelemetrex_xandra,
      description: @description,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      source_url:
        "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_xandra",
      docs: [
        source_url_pattern:
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_xandra/%{path}#L%{line}",
        main: "OpentelemetryXandra",
        extras: ["README.md"]
      ],

      # Hex
      package: package(),
      source_url:
        "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_xandra"
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_xandra",
        "OpenTelemetry Erlang" => "https://github.com/open-telemetry/opentelemetry-erlang",
        "OpenTelemetry Erlang Contrib (OpenTelemetrex Fork)" =>
          "https://github.com/danschultzer/opentelemetrex-erlang-contrib",
        "OpenTelemetry.io" => "https://opentelemetry.io"
      }
    ]
  end

  defp deps do
    [
      # Dev and test dependencies
      {:decimal, "~> 2.0", only: [:dev, :test]},
      {:ex_doc, "~> 0.36", only: :dev},
      {:opentelemetry, "~> 1.0", only: [:dev, :test]},
      {:opentelemetry_exporter, "~> 1.0", only: [:dev, :test]},
      {:xandra, "~> 0.18", only: [:dev, :test]},

      # Library dependencies
      {:opentelemetry_api, "~> 1.0"},
      {:opentelemetry_process_propagator, "~> 0.3"},
      {:opentelemetry_telemetry, "~> 1.1"},
      {:telemetry, "~> 0.4 or ~> 1.0"}
    ]
  end
end
