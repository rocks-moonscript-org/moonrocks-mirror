package = "lusty-rewrite-param"
version = "0.2-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-rewrite-param/archive/v0.2.tar.gz",
  dir = "lusty-rewrite-param-0.2"
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
    ["lusty-rewrite-param.rewrite.accept"]      = "src/rewrite/accept.lua",
    ["lusty-rewrite-param.rewrite.method"]      = "src/rewrite/method.lua",
    ["lusty-rewrite-param.rewrite.body"]        = "src/rewrite/body.lua",
    ["lusty-rewrite-param.rewrite.content-type"]= "src/rewrite/content-type.lua"
  }
}
