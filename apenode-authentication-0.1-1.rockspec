package = "apenode-authentication"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Mashape/apenode-authentication.git",
  branch = "master"
}
description = {
  summary = "Apenode Authentication plugin",
  detailed = [[
    This plugin adds support for authentication
    to the Apenode. Available authentication modes
    are Query, Basic and Header.
  ]],
  homepage = "https://github.com/Mashape/apenode-authentication",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "apenode-base-plugin ~> 0.1-1",
  "stringy ~> 0.2-1"
}
build = {
  type = "builtin",
  modules = {
    ["apenode.plugins.authentication.handler"] = "src/handler.lua",
    ["apenode.plugins.authentication.access"] = "src/access.lua",
  }
}