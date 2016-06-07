package = "header-transfer"
version = "0.0.2-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/syhily/header-transfer",
  branch = "master"
}
description = {
  summary = "Header transfer for kong",
  homepage = "http://getkong.org",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.header-transfer.handler"] = "handler.lua",
    ["kong.plugins.header-transfer.schema"] = "schema.lua",
    ["kong.plugins.header-transfer.access"] = "access.lua"
  }
}
