package = "lusty-statsd"
version = "0.3-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-statsd/archive/v0.3.tar.gz",
  dir = "lusty-statsd-0.3"
}
description = {
  summary = "Statsd interface for lusty.",
  detailed = [[
    Statsd interface for lusty.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "statsd >= 2.0.0-1",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-statsd.context.statsd"]  = "src/context/statsd.lua"
  }
}
