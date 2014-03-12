package = "lusty-request-pattern"
version = "0.3-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-request-pattern/archive/v0.3.tar.gz",
  dir = "lusty-request-pattern-0.3"
}
description = {
  summary = "Lusty plugin for handling requests with a lua file for a pattern.",
  detailed = [[
    Lusty plugin for handling requests with a lua file.
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
    ["lusty-request-pattern.request.pattern"]  = "src/request/pattern.lua",
  }
}
