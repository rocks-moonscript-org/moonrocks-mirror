package = "oxd-web-lua"
version = "1.0-0"
source = {
  url = "git://github.com/GluuFederation/oxd-web-lua"
}
description = {
  summary = "oxd web lua",
  detailed = [[
    Forked from oxdweb.lua
  ]],
  homepage = "https://github.com/GluuFederation/oxd-web-lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "module",
  modules = {
    oxdweb = "oxdweb.lua"
  }
}
