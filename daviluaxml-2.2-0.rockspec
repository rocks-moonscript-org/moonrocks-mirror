package = "DaviLuaXML"
version = "2.2-0"
source = {
   url = "git+https://github.com/pessoa736/DLuaXML",
   tag = "2.2-0"
}
description = {
   summary = "Davi System Lua XML - write XML directly in your Lua code",
   detailed = [[
      Davi System Lua XML (DaviLuaXML) is a library that allows you to use XML syntax inside Lua code.
      XML tags are transformed into Lua function calls, similar to JSX in JavaScript.

      Changes in 2.2-0:
      - Parser extension API: SetPattern, GetPattern, SetParserPrincipal and match to register and query grammar patterns
      - New AST node "file": parser output is now {node_type = "file", children = {...}} grouping all nodes of the file
      - Importer works correctly after searcher installation
      - Tests only run when the module is executed directly (is_main guard)
      - Parser refactored with pattern registry
      - Improved documentation in parser, compile and runtime modules
   ]],
   homepage = "https://github.com/pessoa736/DLuaXML",
   license = "MIT"
}
dependencies = {
   "lpeg",
   "inspect"
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
