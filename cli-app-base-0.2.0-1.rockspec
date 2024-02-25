---@diagnostic disable: lowercase-global
package = "cli-app-base"
version = "0.2.0-1"
source = {
  url = "git+https://gitlab.com/lua_rocks/cli-app-base.git",
  tag = "v0.2.0"
}

description = {
  summary = "cli tool to interact with online video services",
  detailed = [[
]],
  homepage = "https://gitlab.com/lua_rocks/cli-app-base",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  'alogger >= 0.2.2',
  'cmd4lua >= 0.6.0',
  -- optional 'inspect'
}

build = {
  type = "builtin",
  modules = {
    ["cli-app-base"] = "src/cli-app-base.lua",
    ["cli-app-base.builtin-cmds"] = "src/cli-app-base/builtin-cmds.lua"
  }
}
