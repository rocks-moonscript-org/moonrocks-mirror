rockspec_format = "3.0"
package = "yalms"
version = "0.0.1-1"

source = {
  url = "git://github.com/ar-at-localhost/yalms",
  tag = "v0.0.1",
}

description = {
  summary = "Yet Another Lua Module Set - generic Lua utilities for Neovim and LuaRocks.",
  detailed = "Yet Another Lua Module Set - generic Lua utilities for Neovim and LuaRocks.",
  homepage = "https://github.com/ar-at-localhost/yalms",
  license = "GPL-3.0",
}

dependencies = {
  "lua >= 5.1",
}

test_dependencies = {
  "busted >= 2.0",
  "dkjson >= 2.5",
}

build = {
  type = "builtin",
  modules = {
    ["yalms"] = "lua/yalms/init.lua",
    ["yalms.env"] = "lua/yalms/env.lua",
    ["yalms.fs"] = "lua/yalms/fs.lua",
    ["yalms.json"] = "lua/yalms/json.lua",
    ["yalms.str"] = "lua/yalms/str.lua",
    ["yalms.tbl"] = "lua/yalms/tbl.lua",
    ["yalms.time"] = "lua/yalms/time.lua",
  },
}
