# Changelog

## v1.0.0

Forked from [`:opentelemetry_ecto` `1.2.0`](https://github.com/open-telemetry/opentelemetry-erlang-contrib/releases/tag/opentelemetry-ecto-v1.2.0).

### Changed

- Conforms to semantic conventions 1.27
- Changed span name from `ecto.repo.query` to `{db.operation.name} {target}` / `{target}`

### Adds

- Added `db.namespace` attribute
- Added `db.collection.name` attribute
- Added `db.query.text` attribute
- Added `server.address` attribute
- Added `server.port` attribute
- Added `db.client.operation.duration` (seconds in float)
- Added `db.client.connection.wait_time` (seconds in float)
- Added `db.client.connection.use_time` (seconds in float)
- Added `:db_statement` config option

### Removes

- Removed `db.type` attribute
- Removed `db.name` and `db.instance` attributes in favor of `db.namespace`
- Removed `source` attribute in favor of `db.collection.name`
- Removed `db.statement` attribute in favor of `db.query.text`
- Removed `db.url` attirbute in favor of `server.address`/`server.port` attributes
- Removed `total_time_*` attributes in favor `db.client.operation.duration`
- Removed `idle_time_*` attributes in favor `db.client.operation.duration`
- Removed `queue_time_*` attributes in favor of `db.client.connection.wait_time`
- Removed `query_time_*` attributes in favor of `db.client.connection.use_time`
- Removed `decode_time_*` attributes
- Removed `:db_statement` config option in favor of `:db_query`
- Removed `:span_prefix` config option
- Removed `:time_unit` config option
