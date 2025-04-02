# opentelemetry_cowboy

[![EEF Observability WG project](https://img.shields.io/badge/EEF-Observability-black)](https://github.com/erlef/eef-observability-wg)
[![Hex.pm](https://img.shields.io/hexpm/v/opentelemetrex_cowboy)](https://hex.pm/packages/opentelemetrex_cowboy)
![Build Status](https://github.com/danschultzer/opentelemetrex-erlang-contrib/workflows/Erlang/badge.svg)

Telemetry handler that creates Opentelemetry spans from cowboy events.

After installing, setup the handler in your application behaviour before your
top-level supervisor starts.

```erlang
opentelemetry_cowboy:setup()
```

See [cowboy_telemetry](https://github.com/beam-telemetry/cowboy_telemetry) for prerequisite setup.

There is no additional prerequisite setup for [plug_cowboy](https://hex.pm/packages/plug_cowboy) users.

## Installation

```erlang
{deps, [
  {opentelemetrex_cowboy, "~> 1.0"}
]}
```
```elixir
def deps do
  [
    {:opentelemetrex_cowboy, "~> 1.0"}
  ]
end
```
