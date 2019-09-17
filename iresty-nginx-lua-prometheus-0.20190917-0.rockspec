-- Note, this file must have version in its name
-- (see https://github.com/knyar/nginx-lua-prometheus/issues/27)
package = "iresty-nginx-lua-prometheus"
version = "0.20190917-0"

source = {
  url = "git://github.com/iresty/nginx-lua-prometheus.git",
  tag = "0.20190917",
}

description = {
  summary = "Prometheus metric library for Nginx",
  homepage = "https://github.com/iresty/nginx-lua-prometheus",
  license = "MIT"
}

build = {
    type = "builtin",
    modules = {
        ["nginx.prometheus"] = "prometheus.lua"
    }
}
