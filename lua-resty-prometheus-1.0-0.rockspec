package = "lua-resty-prometheus"
version = "1.0-0"

source = {
  url = "git://github.com/iresty/lua-resty-prometheus.git",
  tag = "1.0",
}

description = {
  summary = "Prometheus metric library for OpenResty",
  homepage = "https://github.com/iresty/lua-resty-prometheus",
  license = "MIT"
}

build = {
    type = "builtin",
    modules = {
        ["resty.prometheus"] = "lib/resty/prometheus.lua"
    }
}
