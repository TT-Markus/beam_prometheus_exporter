# BEAM prometheus exporter

A Cowboy 1 application that just exposes the `/metrics` handler of
[prometheus-cowboy](https://github.com/deadtrickster/prometheus-cowboy).

Most of the real work is done by [prometheus.erl](https://github.com/deadtrickster/prometheus.erl/). However we wanted something easy to add quickly to our release. This projects quickly exposes BEAM metrics to prometheus.

You can use the [beam dashboards](https://github.com/deadtrickster/beam-dashboards) to graph this information in grafana.

## Usage

- Add the depedency to rebar.config

- Add the depencendy to the application resource file so it gets started with the build
