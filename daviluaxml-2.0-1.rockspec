package = "DaviLuaXML"
version = "2.0-1"
source = {
   url = "git+https://github.com/pessoa736/DaviLuaXML",
   tag = "2.0-1"
}
description = {
   summary = "Davi System Lua XML - write XML directly in your Lua code",
   detailed = [[
      Davi System Lua XML (DaviLuaXML) is a library that allows you to use XML syntax inside Lua code.
      XML tags are transformed into Lua function calls, similar to JSX in JavaScript.

      Changes in 2.0-1:
      - Breaking: module renamed from DaviLuaXML to dslx, complete rewrite of the library
      - Parser rewritten on top of LPeg (new lpeg dependency)
      - Runtime with extensible handler system, register custom node types with runtime:addHandler
      - Import API: require() .dslx files directly, with install/uninstall/loadfile/reload/clear
      - Compiler can write the generated Lua to a file (tofile, output_dir, output_name) and resolves relative paths
      - Main module exports the full API and installs the require searcher automatically
   ]],
   homepage = "https://github.com/pessoa736/DaviLuaXML",
   license = "MIT"
}
dependencies = {
   "loglua",
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
   copy_directories = {
      "doc"
   }
}
