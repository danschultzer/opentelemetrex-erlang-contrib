defmodule OpentelemetryTesla.MixProject do
  use Mix.Project

  @version "1.0.0"

  def project do
    [
      app: :opentelemetrex_tesla,
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      docs: docs(),
      source_url:
        "https://github.com/open-telemetrex/opentelemetrex-erlang-contrib/tree/main/instrumentation/opentelemetry_tesla"
    ]
  end

  defp docs() do
    [
      source_url_pattern:
        "https://github.com/open-telemetrex/opentelemetrex-erlang-contrib/blob/main/instrumentation/opentelemetry_tesla/%{path}#L%{line}",
      main: "readme",
      extras: ["README.md"]
    ]
  end

  defp description() do
    "Tesla middleware that creates OpenTelemetry spans and injects tracing headers into HTTP requests for Tesla clients."
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/open-telemetrex/opentelemetrex-erlang-contrib/instrumentation/opentelemetry_tesla",
        "OpenTelemetry Erlang" => "https://github.com/open-telemetry/opentelemetry-erlang",
        "OpenTelemetry Erlang Contrib (OpenTelemetrex Fork)" =>
          "https://github.com/open-telemetrex/opentelemetrex-erlang-contrib",
        "OpenTelemetry.io" => "https://opentelemetry.io"
      }
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry, "~> 1.0", only: :test},
      {:opentelemetry_api, "~> 1.2"},
      {:opentelemetry_telemetry, "~> 1.1"},
      {:opentelemetry_semantic_conventions, "~> 0.2"},
      {:tesla, "~> 1.4"},
      {:ex_doc, "~> 0.36", only: :dev, runtime: false},
      {:bypass, "~> 2.1", only: :test},
      {:jason, "~> 1.3", only: :test}
    ]
  end
end
