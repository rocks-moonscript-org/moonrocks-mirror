package = "lusty-log-console"
version = "0.1-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-log-console/v0.1.tar.gz",
  dir = "lusty-log-console"
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
  "lusty-log >= 0.1-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-log-console.log.console"]  = "src/log/console.lua",
  }
}
