package = "hylaa-im-auth"
version = "1.0-1"
source = {
  url = "http://api.hylaa.net/rocks/hylaa-im-auth-1.0.tar.gz"
}
description = {
  summary = "A Kong plugin.",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hylaa-im-auth.handler"] = "handler.lua",
    ["kong.plugins.hylaa-im-auth.schema"] = "schema.lua",
    ["kong.plugins.hylaa-im-auth.access"] = "access.lua",
  }
}
