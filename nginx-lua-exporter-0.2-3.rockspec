package = "nginx-lua-exporter"
version = "0.2-3"

source = {
  url = "git://github.com/mohsenmottaghi/nginx-lua-exporter.git",
  tag = "v0.2.3",
}

description = {
  summary = "NGINX lua exporter for Prometheus",
  homepage = "https://github.com/mohsenmottaghi/nginx-lua-exporter",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["nginx-lua-exporter.prometheus"] = "src/prometheus.lua",
        ["nginx-lua-exporter.prometheus_calculators"] = "src/prometheus_calculators.lua",
        ["nginx-lua-exporter.prometheus_collectors"] = "src/prometheus_collectors.lua",
        ["nginx-lua-exporter.prometheus_exporters"] = "src/prometheus_exporters.lua",
        ["nginx-lua-exporter.prometheus_initialization"] = "src/prometheus_initialization.lua",
        ["nginx-lua-exporter.prometheus_keys"] = "src/prometheus_keys.lua",
        ["nginx-lua-exporter.prometheus_operations"] = "src/prometheus_operations.lua"
    }
}
