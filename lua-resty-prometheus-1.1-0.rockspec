package = "lua-resty-prometheus"
version = "1.1-0"

source = {
  url = "git://github.com/api7/lua-resty-prometheus.git",
  tag = "1.1",
}

description = {
  summary = "Prometheus metric library for OpenResty",
  homepage = "https://github.com/api7/lua-resty-prometheus",
  license = "MIT"
}

build = {
    type = "builtin",
    modules = {
        ["prometheus"] = "prometheus.lua",
        ["prometheus_resty_counter"] = "prometheus_resty_counter.lua",
        ["prometheus_keys"] = "prometheus_keys.lua",
    }
}
