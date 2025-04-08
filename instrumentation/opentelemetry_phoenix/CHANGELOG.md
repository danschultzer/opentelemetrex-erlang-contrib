# Changelog

## 1.0.0

Forked from [`:opentelemetry_phoenix` `2.0.1`](https://github.com/open-telemetry/opentelemetry-erlang-contrib/releases/tag/opentelemetry-phoenix-v2.0.1).

### Changed

- Added `http.route` attribute for LiveView spans
- LiveView mount span name changed from `{live_view_module}.mount` to `live_view.mount {route}`
- LiveView handle_params span name for LiveView spans changed from `{live_view_module}.handle_params` to `live_view.handle_params {route}`
- LiveView handle_event span name changed from `{live_view_module}.handle_event {event}` to `live_view.handle_event {route} {event}`
