package = "cipher-log"
version = "1.0.1-1"
source = {
  url = "git://github.com/devikamehra/cipher-log",
  tag = "v1.0.1",
}
description = {
  summary = "A Kong plugin to encrypt file logs",
}
dependencies = {
  "lua ~> 5.1",
  "stringy ~> 0.4-1",
  "lua-cjson ~> 2.1.0-1",
  "lua-resty-nettle"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.cipher-log.handler"] = "scr/handler.lua",
    ["kong.plugins.cipher-log.schema"] = "scr/schema.lua"
  }
}
