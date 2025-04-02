# OpentelemetryEcto

Telemetry handler that creates OpenTelemetry spans from Ecto query events. Because
Ecto emits telemetry events only after queries have finished, OpentelemetryEcto
estimates the start time of the span by subtracting the reported total duration
from the current timestamp.

After installing, set up the handler in your application's `start/2` callback before your
top-level supervisor starts, passing the Telemetry prefix of the Ecto repo you want to instrument.

```elixir
OpentelemetryEcto.setup([:blog, :repo])
```

See [the documentation for `OpentelemetryEcto.setup/2`](https://hexdocs.pm/opentelemetrex_ecto/OpentelemetryEcto.html#setup/2) for additional options that
may be supplied.

## Installation

Add the package to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opentelemetrex_ecto, "~> 1.0"}
  ]
end
```

## Compatibility Matrix

| OpentelemetryEcto Version | OTel Version | Notes |
| :------------------------ | :----------- | :---- |
|                           |              |       |
| v1.0                      | v1.0         |       |
