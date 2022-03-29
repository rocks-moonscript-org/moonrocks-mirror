package = "nginx-lua-exporter"
version = "0.5-1"

source = {
  url = "https://github.com/mohsenmottaghi/nginx-lua-exporter",
  tag = "v0.5.1",
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
        ["nginx-lua-exporter.nginx-lua-exporter"] = "src/nginx-lua-exporter.lua",
        ["nginx-lua-exporter.var.keys"] = "src/var/keys.lua",
        ["nginx-lua-exporter.config.config"] = "src/config/config.lua",
        ["nginx-lua-exporter.lib.calculators"] = "src/lib/calculators.lua",
        ["nginx-lua-exporter.lib.collectors"] = "src/lib/collectors.lua",
        ["nginx-lua-exporter.lib.exporters"] = "src/lib/exporters.lua",
        ["nginx-lua-exporter.lib.initialization"] = "src/lib/initialization.lua",
        ["nginx-lua-exporter.helper.operations"] = "src/helper/operations.lua"
    }
}
