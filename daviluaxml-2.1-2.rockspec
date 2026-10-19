package = "DaviLuaXML"
version = "2.1-2"
source = {
   url = "git+https://github.com/pessoa736/DLuaXML",
   tag = "2.1-2"
}
description = {
   summary = "Davi System Lua XML - write XML directly in your Lua code",
   detailed = [[
      Davi System Lua XML (DaviLuaXML) is a library that allows you to use XML syntax inside Lua code.
      XML tags are transformed into Lua function calls, similar to JSX in JavaScript.

      Changes in 2.1-2:
      - Fixed tests running when a user file has the same name as a library module
      - on_test detection now uses select('#', ...) instead of matching arg[0]
   ]],
   homepage = "https://github.com/pessoa736/DLuaXML",
   license = "MIT"
}
dependencies = {
   "lpeg"
}

build = {
   type = "builtin",
   modules = {
      ["dslx"]="dslx/init.lua",
      ["dslx.parser"]="dslx/parser.lua",
      ["dslx.runtime"]="dslx/runtime.lua",
      ["dslx.compile"]="dslx/compile.lua",
      ["dslx.import"]="dslx/import.lua",
      ["dslx.readFile"]="dslx/readFile.lua",
   },
}
