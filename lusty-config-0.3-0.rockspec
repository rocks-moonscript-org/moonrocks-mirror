package = "lusty-config"
version = "0.3-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-config/archive/v0.3.tar.gz",
  dir = "lusty-config-0.3"
}
description = {
  summary = "Configuration table plugin for lusty.",
  detailed = [[
    Allows configuring lusty using a lua table
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lusty >= 0.2-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-config.init"]  = "src/init.lua"
  }
}
