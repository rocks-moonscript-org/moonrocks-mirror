package = "lusty-error-status"
version = "0.2-1"
source = {
  url = "https://github.com/Olivine-Labs/lusty-error-status/archive/v0.2.tar.gz",
  dir = "lusty-error-status-0.2"
}
description = {
  summary = "error handling by status code.",
  detailed = [[
    Error handling by status code for lusty.
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
    ["lusty-error-status.error.status"]  = "src/error/status.lua",
  }
}
