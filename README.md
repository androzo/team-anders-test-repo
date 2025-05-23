# team-anders-test-repo
Test repo 

# deploy uptrace in k8s
```bash
helm install -n uptrace --create-namespace my-uptrace uptrace/uptrace
```

# get otel agent
```bash
wget https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar
```

# set otel params
```bash
export OTEL_RESOURCE_ATTRIBUTES=service.name=oltpdemo-service,service.version=1.0.0
export OTEL_TRACES_EXPORTER=otlp
export OTEL_METRICS_EXPORTER=otlp
export OTEL_LOGS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_COMPRESSION=gzip
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4318
export OTEL_EXPORTER_OTLP_HEADERS="uptrace-dsn=http://project1_secret_token@localhost:4318?grpc=4317"
export OTEL_EXPORTER_OTLP_METRICS_TEMPORALITY_PREFERENCE=DELTA
export OTEL_EXPORTER_OTLP_METRICS_DEFAULT_HISTOGRAM_AGGREGATION=BASE2_EXPONENTIAL_BUCKET_HISTOGRAM
```
# run app with agent
```bash
java -javaagent:opentelemetry-javaagent.jar \
     -jar target/uptracedemo-0.0.1-SNAPSHOT.jar
```