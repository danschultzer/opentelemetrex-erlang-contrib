# OpentelemetryPhoenix

[![EEF Observability WG project](https://img.shields.io/badge/EEF-Observability-black)](https://github.com/erlef/eef-observability-wg)
[![Hex.pm](https://img.shields.io/hexpm/v/opentelemetrex_phoenix)](https://hex.pm/packages/opentelemetrex_phoenix)
![Build Status](https://github.com/opentelemetry-beam/opentelemetry_phoenix/workflows/Tests/badge.svg)

Telemetry handler that creates Opentelemetry spans from Phoenix events.

After installing, setup the handler in your application behaviour before your
top-level supervisor starts.

```elixir
OpentelemetryPhoenix.setup(adapter: :bandit)
```

See the documentation for `OpentelemetryPhoenix.setup/1` for additional options that
may be supplied.

## Installation

```elixir
def deps do
  [
    {:opentelemetrex_phoenix, "~> 1.0.0"}
  ]
end
```

[OpentelemetryBandit](https://hex.pm/packages/opentelemetrex_bandit) or [OpentelemetryCowboy](https://hex.pm/packages/opentelemetrex_cowboy) must be installed to capture the full
request lifecycle. Phoenix only handles part of the request lifecycle which can lead
to incomplete request durations and lost traces for requests terminated at the socket
level or before reaching Phoenix.

## Note on Phoenix integration

`OpentelemetryPhoenix` requires phoenix to use `Plug.Telemetry` in order to correctly trace endpoint calls.

The `endpoint.ex` file should look like:

```Elixir
defmodule MyApp.Endpoint do
  use Phoenix.Endpoint, otp_app: :my_app
  ...
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]
  ...
end
```

The [Phoenix endpoint.ex template](https://github.com/phoenixframework/phoenix/blob/v1.6.0/installer/templates/phx_web/endpoint.ex#L39) can be used as a reference
