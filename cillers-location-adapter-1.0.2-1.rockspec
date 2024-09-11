package = "cillers-location-adapter"
version = "1.0.2-1"
source = {
  url = "git://github.com/Cillers-com/cillers-location-adapter.git",
  branch = "main"
}
supported_platforms = {
  "linux",
  "macosx",
}

description = {
  summary = "Kong plugin to rewrite domain and base path in Location header of 301/302 responses, handling both absolute and relative URLs.",
  detailed = [[
    A Kong plugin that rewrites the domain and base path of redirect responses (301 and 302) to configurable values, while supporting both absolute and relative URLs.
  ]],
  homepage = "https://github.com/yourusername/cillers-location-adapter/archive/1.0.1.tar.gz",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "kong >= 2.0.0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.cillers-location-adapter.handler"] = "kong/plugins/cillers-location-adapter/handler.lua",
    ["kong.plugins.cillers-location-adapter.schema"] = "kong/plugins/cillers-location-adapter/schema.lua",
  }
}

