# Changelog

## 1.0.0

Forked from [`:opentelemetry_oban` `1.1.1`](https://github.com/open-telemetry/opentelemetry-erlang-contrib/releases/tag/opentelemetry-oban-v1.1.1).

### Changed

- Updated to support `:opentelemetry_semantic_conventions` `1.27`
- Conforms to `1.27` semantic conventions:
  - Changed `messaging.destination` to `messaging.consumer.group.name`
  - Removed `messaging.destination.kind`
  - Changed span name `{destination} {operation}` to `{operation} {destination}`
  - Changed span name `{plugin} process` to `oban.plugin {plugin}`
  - Changed span name `Oban bulk insert` to `{operation} {destination}` when all job types are the same
  - Changed span name `Oban bulk insert` to `{operation}` when job types are the different
  - Added `messaging.destination.name`
  - Added `messaging.operation.name`
  - Added `messaging.operation.type`
  - Added `messaging.message.id`
