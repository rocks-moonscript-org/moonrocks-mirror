package = "AsciiCursor-Lua"
rockspec_format = "3.0"
version = "0.1-2"
source = {
   url = "git://github.com/mr-V01d/AsciiCursor-Lua",
   tag = "v0.1"
}
description = {
   homepage = "https://github.com/mr-V01d/",
   license = "GPL-3.0",
   detailed = [[ AsciiCursor-Lua is a lightweight Lua library for manipulating the terminal cursor and colors using ASCII control sequences. ]],
   summary = "Small Lua library that provides funcitonality for using Ascii escape characters ",
   issues_url = "https://github.com/mr-V01d/AsciiCursor-Lua/issues",
   maintainer = "MrVoid | mr-V01d (github) | mrvoid__ (discord)",
   labels = { "ascii", "cursor", "terminal"}
}
build = {
   type = "builtin",
   modules = {
      ["Cursor"] = "mr-void/cursor/init.lua",
      ["Cursor.csi"] = "mr-void/cursor/modules/csi.lua",
      ["Cursor.srg"] = "mr-void/cursor/modules/srg.lua"
   }
}
