package = "apenode-base-plugin"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Mashape/apenode-base-plugin.git",
  branch = "master"
}
description = {
  summary = "Apenode base plugin dependency",
  detailed = [[
    This project should be imported in every
    Apenode plugin, and it includes a base
    plugin utils to be used in every plugin.
  ]],
  homepage = "https://github.com/Mashape/apenode-base-plugin",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "busted ~> 2.0.rc5-0"
}
build = {
  type = "builtin",
  modules = {
    ["apenode.base_plugin"] = "src/base_plugin.lua",
    ["apenode.classic"] = "src/classic.lua",
  }
}