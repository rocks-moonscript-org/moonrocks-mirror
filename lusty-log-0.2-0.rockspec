package = "lusty-log"
version = "0.2-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-log/archive/v0.2.tar.gz",
  dir = "lusty-log-0.2"
}
description = {
  summary = "Logging interface for lusty.",
  detailed = [[
    Logging interface for lusty.
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
    ["lusty-log.context.log"]  = "src/context/log.lua",
  }
}
