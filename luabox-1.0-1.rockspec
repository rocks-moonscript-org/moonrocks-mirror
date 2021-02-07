build = {
  modules = {
    luabox = "luabox.lua",
    ["luabox.clear"] = "luabox/clear.lua",
    ["luabox.colors"] = "luabox/colors.lua",
    ["luabox.console"] = "luabox/console.lua",
    ["luabox.cursor"] = "luabox/cursor.lua",
    ["luabox.event"] = "luabox/event.lua",
    ["luabox.init"] = "luabox/init.lua",
    ["luabox.screen"] = "luabox/screen.lua",
    ["luabox.scroll"] = "luabox/scroll.lua",
    ["luabox.util"] = "luabox/util.lua"
  },
  type = "builtin"
}
dependencies = {
  "luv"
}
description = {
  detailed = "Small low-level terminal API library.  This is a rewrite of Termion, a Rust library, for Lua.\n",
  homepage = "https://github.com/SovietKitsune/luabox",
  labels = {
    "tui",
    "terminal"
  },
  license = "MIT",
  summary = "Small low-level terminal API library."
}
package = "luabox"
rockspec_format = "3.0"
source = {
  tag = "v1.0",
  url = "git://github.com/SovietKitsune/luabox.git"
}
version = "1.0-1"
