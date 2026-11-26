rockspec_format = "3.0"
package = "libstdshim"
version = "0.9.4-1"
source = {
   url = "git+https://github.com/Deltachaos/LibStdShim.git",
   tag = "0.9.4"
}
description = {
   summary = "Lua 5.1 standard-library shims for World of Warcraft",
   detailed = [[
    LibStdShim provides os, io, debug, bit32, load/loadfile/dofile, and table
    helpers that approximate the Lua 5.1 standard library inside WoW's sandbox,
    using a virtual filesystem and LibStub when available.
  ]],
   homepage = "https://github.com/Deltachaos/LibStdShim",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      LibStdShim = "LibStdShim.lua",
      ["LibStdShim.bit32"] = "LibStdShim/bit32.lua",
      ["LibStdShim.debug"] = "LibStdShim/debug.lua",
      ["LibStdShim.io"] = "LibStdShim/io.lua",
      ["LibStdShim.load"] = "LibStdShim/load.lua",
      ["LibStdShim.os"] = "LibStdShim/os.lua",
      ["LibStdShim.table"] = "LibStdShim/table.lua"
   },
   copy_directories = {
      "tests",
      "meta"
   }
}
test_dependencies = {
   "busted",
   "luabitop"
}
test = {
   type = "busted"
}
