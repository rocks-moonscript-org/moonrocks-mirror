rockspec_format = "3.0"
package = "rcon"
version = "0.1-1"
source = {
   url = "https://penguinspy.dev/projects/rcon/rcon-0.1.tar.gz"
}
description = {
   summary = "a simple RCON library written in plain Lua, using LuaSocket (and optionally copas)",
   homepage = "https://penguinspy.dev/projects/rcon/",
   license = "MPL-2.0",
   labels = {"commandline", "network"}
}
dependencies = {
   "lua >= 5.1",
   "luasocket"
}
build = {
   type = "none",
   install = {
      lua = { ["rcon"] = "rcon.lua" },
      bin = { ["rcon"] = "rcon-bin.lua"}
   }
}
