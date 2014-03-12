package = "lusty-rewrite-param"
version = "0.4-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-rewrite-param/archive/v0.4.tar.gz",
  dir = "lusty-rewrite-param-0.4"
}
description = {
  summary = "HTTP param rewrites for lusty.",
  detailed = [[
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty >= 0.2-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-rewrite-param.rewrite.header"]      = "src/rewrite/header.lua",
    ["lusty-rewrite-param.rewrite.method"]      = "src/rewrite/method.lua",
    ["lusty-rewrite-param.rewrite.body"]        = "src/rewrite/body.lua",
  }
}
