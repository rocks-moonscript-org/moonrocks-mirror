package = "lusty-mustache"
version = "0.1-1"
source = {
  url = "https://github.com/Olivine-Labs/lusty-mustache/archive/v0.1.tar.gz",
  dir = "lusty-mustache-0.1"
}
description = {
  summary = "mustache template rendering for lusty.",
  detailed = [[
    mustache template rendering for lusty.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty >= 0.1-0",
  "busted >= 1.7-1",
  "lustache >= 1.3-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-mustache.render.mustache"]  = "src/render/mustache.lua",
  }
}
