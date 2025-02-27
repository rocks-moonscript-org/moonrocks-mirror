package = "kong-to-waf"

version = "1.0.0-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/cloudblue/kong-to-waf",
  tag = "1.0.0"
}

description = {
  summary = "Kong Gateway plugin for WAF offloading",
  license = "Apache License, Version 2.0",
  maintainer = "CloudBlue Connect <together@cloudblue.com>"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-to-waf.access"] = "src/access.lua",
    ["kong.plugins.kong-to-waf.handler"] = "src/handler.lua",
    ["kong.plugins.kong-to-waf.schema"] = "src/schema.lua",
  }
}