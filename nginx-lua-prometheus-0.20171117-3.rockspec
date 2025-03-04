package = "nginx-lua-prometheus"
version = "0.20171117-3"

source = {
  url = "git://github.com/knyar/nginx-lua-prometheus.git"
}

description = {
  summary = "Prometheus metric library for Nginx",
  homepage = "https://github.com/knyar/nginx-lua-prometheus",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["nginx.prometheus"] = "prometheus.lua"
    }
}
