# OpenTelemetry For Debug

## How to use

1. Change the value of `CLUSTER_EXTERNAL_IP` in file `.env` to the external IP of the computer where docker will run.

    This is useful if docker running inside WSL and you want to access it from Windows, change the `CLUSTER_EXTERNAL_IP` to the IP of WSL.

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
