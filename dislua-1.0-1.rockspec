package = "DisLua"
version = "1.0-1"
source = {
   url = "git+https://github.com/FishLake-Scripts/DisLua"
}
description = {
   summary = "LuaJIT 2.1 Bytecode Parser",
   detailed = "Lua library for parsing bytecode of compiled LuaJIT files.",
   homepage = "https://github.com/FishLake-Scripts/DisLua",
   license = "MIT License"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      dislua = "dislua/init.lua",
      ["dislua.luajit-2.opcodes"] = "dislua/luajit-2/opcodes.lua",
      ["dislua.luajit-2.read"] = "dislua/luajit-2/read.lua"
   }
}
