package = "DaviLuaXML"
version = "2.1-1"
source = {
   url = "git+https://github.com/pessoa736/DLuaXML",
   tag = "2.1-1"
}
description = {
   summary = "Davi System Lua XML - write XML directly in your Lua code",
   detailed = [[
      Davi System Lua XML (DaviLuaXML) is a library that allows you to use XML syntax inside Lua code.
      XML tags are transformed into Lua function calls, similar to JSX in JavaScript.

      Changes in 2.1-1:
      - Added is_element global: checks if a function can be used as an element (exactly 1 parameter)
      - Fixed is_element crashing when the argument is not a function
      - Runtime now generates more compact code (expressions are inlined, no wrappers)
      - Fixed import.compile returning a chunk when compilation fails
      - Fixed the import test path after the test fixtures were moved
      - Added LuaLS/LSP annotations and MIT license headers to all modules
      - Removed the unused loglua dependency
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
