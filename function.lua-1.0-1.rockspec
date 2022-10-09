package = "Function.lua"
version = "1.0-1"
source = {
  url = "https://github.com/UrNightmaree/Function.lua/archive/v1.1.tar.gz",
  dir = 'Function.lua-1.1'
}
description = {
  summary = 'Implementation of JS Function constructor',
  detailed = [[
Implementation of JS Function constructor.

Usage can be found in the homepage]],

  homepage = "https://github.com/UrNightmaree/Function.lua",
  license = "MIT"
}
dependencies = {
  'lua >= 5.1',
  'lust-template >= 1.1'
}
build = {
  type = "builtin",
  modules = {
    Function = "Function.lua"
  }
}
