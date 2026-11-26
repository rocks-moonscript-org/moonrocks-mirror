package = "wowrocks"
version = "0.9.0-1"
source = {
   url = "git+https://github.com/Deltachaos/wowrocks.git",
   tag = "0.9.0"
}
description = {
   summary = "LuaRocks drop-in that stringifies installed Lua for World of Warcraft",
   detailed = [[
wowrocks is a drop-in replacement for the luarocks command. It forwards
the same arguments, then writes stringified replicas of share/lua/<ver>
and a WowRocks.xml include list.
]],
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luarocks >= 3.0"
}
build = {
   type = "builtin",
   modules = {
      ["wowrocks.addon"] = "src/wowrocks/addon.lua",
      ["wowrocks.bootstrap"] = "src/wowrocks/bootstrap.lua",
      ["wowrocks.cli"] = "src/wowrocks/cli.lua",
      ["wowrocks.externals"] = "src/wowrocks/externals.lua",
      ["wowrocks.hook"] = "src/wowrocks/hook.lua",
      ["wowrocks.pkgmeta"] = "src/wowrocks/pkgmeta.lua",
      ["wowrocks.project"] = "src/wowrocks/project.lua",
      ["wowrocks.stringify"] = "src/wowrocks/stringify.lua",
      ["wowrocks.toc"] = "src/wowrocks/toc.lua",
      ["wowrocks.util"] = "src/wowrocks/util.lua",
      ["wowrocks.wrap"] = "src/wowrocks/wrap.lua",
      ["wowrocks.xml"] = "src/wowrocks/xml.lua"
   },
   install = {
      bin = {
         wowaddon = "bin/wowaddon",
         wowrocks = "bin/wowrocks"
      }
   }
}
