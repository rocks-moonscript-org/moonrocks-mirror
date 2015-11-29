package = "etcd"
version = "0.1.0-1"
source = {
  url = "https://github.com/anibali/etcd.lua/archive/v0.1.0.tar.gz",
  dir = "etcd.lua-0.1.0"
}
description = {
  summary = "Lua etcd client",
  detailed = [[
    This module provides a simple client for etcd, a highly-available key
    value store
  ]],
  homepage = "https://github.com/anibali/etcd.lua",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "luasocket >= 2.0",
  "lua-cjson >= 2.1.0"
}
build = {
  type = "builtin",
  modules = {
    etcd = "etcd.lua"
  }
}
