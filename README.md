# OpenTelemetry For Debug

## How to use

1. Change the value of `CLUSTER_IP` in file `.env` to the external IP of the computer where docker will run.

    This is useful if docker running inside WSL and you want to access it from Windows, change the `CLUSTER_IP` to the IP of WSL.

2. Change the opentelemetry collector setting in file `src/otelcollector/otelcollector.yaml` to collect application metrics.

    ```diff
    + - job_name: application-metrics
    +   scrape_interval: 10s
    +   static_configs:
    +     - targets: ["10.196.50.182:5000"]
    ```

3. Start docker

    ```bash
    docker compose up -d
    docker logs -f
    ```

4. (Optional) Stop docker and cleanup

    ```bash
    docker compose down
    ```

## Exported Ports

> The following ports can be modified in the file `.env`.

| Port | Description | Example |
| :--: | :---------: | :-----: |
| 9200 | Elasticsearch | <http://localhost:9200> |
| 5601 | Kibana | <http://localhost:5601> |
| 9090 | Prometheus UI | <http://localhost:9090> |
| 16686 | Jaeger Query UI | <http://localhost:16686> |
| 3000 | Grafana UI | <http://localhost:3000> |
| 4317 | OTLP gRPC receiver | <http://localhost:4317> |
| 4318 | OTLP http receiver | <http://localhost:4318> |
| 55679 | [zpages](https://github.com/open-telemetry/opentelemetry-collector/blob/main/extension/zpagesextension/README.md) for opentelemetry collector | <http://localhost:55679/debug/servicez>, <http://localhost:55679/debug/tracez> |

## Reference

1. <https://github.com/monitoringartist/opentelemetry-collector-monitoring>
1. <https://github.com/open-telemetry/opentelemetry-demo>
