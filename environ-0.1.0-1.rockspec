package = "environ"
version = "0.1.0-1"
source = {
  url = "https://github.com/moteus/lua-environ/archive/v0.1.0.zip",
  dir = "lua-environ-0.1.0",
}
description = {
  summary = "Manipulate with environment variables",
  homepage = "http://github.com/moteus/lua-environ",
  license = "MIT/X11",
  detailed = [[
  ]],
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "lpeg",
}
build = {
  type = "builtin",
  copy_directories = {'examples', 'test'},
  platforms = {
    windows = {
      modules = {
        ["environ.core"] = {
          libraries = {"user32"},
        }
      }
    }
  },
  modules = {
    [ "environ.core"          ] = { sources = { "src/environ.c" } },
    [ "environ"               ] = "src/lua/environ.lua",
    [ "environ.process"       ] = "src/lua/environ/process.lua",
    [ "environ.system"        ] = "src/lua/environ/system.lua",
    [ "environ.user"          ] = "src/lua/environ/user.lua",
    [ "environ.utils"         ] = "src/lua/environ/utils.lua",
    [ "environ.volatile"      ] = "src/lua/environ/volatile.lua",
    [ "environ.win32.reg"     ] = "src/lua/environ/win32/reg.lua",
    [ "environ.win32.system"  ] = "src/lua/environ/win32/system.lua",
  }
}












