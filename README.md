# OpenTelemetry For Debug

## Exported Ports

| Port | Description | Example |
| :--: | :---------: | :-----: |
| 4317 | OTLP gRPC receiver | http://localhost:4317 |
| 4318 | OTLP http receiver | http://localhost:4318 |
| 55679 | [zpages](https://github.com/open-telemetry/opentelemetry-collector/blob/main/extension/zpagesextension/README.md) for opentelemetry collector | http://localhost:55679/debug/servicez, http://localhost:55679/debug/tracez |
| 16686 | Jaeger Query UI | http://localhost:16686 |
| 9090 | Prometheus UI | http://localhost:9090 |
| 3000 | Grafana UI | http://localhost:3000 |

## Reference

1. <https://grafana.com/grafana/dashboards/15983-opentelemetry-collector/>
2. <https://github.com/open-telemetry/opentelemetry-demo>