package = "prom-client"
version = "1.2-1"
source = {
   url = "git+https://github.com/guicaulada/lua-prom-client.git"
}
description = {
   detailed = [[
A Prometheus client for Lua that supports histogram, summaries, gauges and
counters.]],
   homepage = "https://github.com/guicaulada/lua-prom-client",
   license = "MIT/X11"
}
dependencies = {
   "tdigest >= 1.0"
}
build = {
   type = "builtin",
   modules = {
      ["prom-client.init"] = "prom-client/init.lua",
      ["prom-client.bucketGenerators"] = "prom-client/bucketGenerators.lua",
      ["prom-client.counter"] = "prom-client/counter.lua",
      ["prom-client.defaultMetrics"] = "prom-client/defaultMetrics.lua",
      ["prom-client.gauge"] = "prom-client/gauge.lua",
      ["prom-client.globalRegistry"] = "prom-client/globalRegistry.lua",
      ["prom-client.histogram"] = "prom-client/histogram.lua",
      ["prom-client.metric"] = "prom-client/metric.lua",
      ["prom-client.metricAggregators"] = "prom-client/metricAggregators.lua",
      ["prom-client.metrics.gcDurationHistogram"] = "prom-client/metrics/gcDurationHistogram.lua",
      ["prom-client.metrics.processCpuTotal"] = "prom-client/metrics/processCpuTotal.lua",
      ["prom-client.metrics.processMemoryTotal"] = "prom-client/metrics/processMemoryTotal.lua",
      ["prom-client.metrics.processStartTime"] = "prom-client/metrics/processStartTime.lua",
      ["prom-client.metrics.version"] = "prom-client/metrics/version.lua",
      ["prom-client.registry"] = "prom-client/registry.lua",
      ["prom-client.summary"] = "prom-client/summary.lua",
      ["prom-client.timeWindowQuantiles"] = "prom-client/timeWindowQuantiles.lua",
      ["prom-client.util"] = "prom-client/util.lua",
      ["prom-client.validation"] = "prom-client/validation.lua"
   }
}
