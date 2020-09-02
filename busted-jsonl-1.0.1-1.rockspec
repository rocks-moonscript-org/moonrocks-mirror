rockspec_format = "3.0"
package = "busted-jsonl"
version = "1.0.1-1"
source = {
   url = "git://github.com/eskerda/busted-jsonl",
   tag = "1.0.1",
}
description = {
   summary = "A JSON Lines output handler for Busted",
   detailed = [[
      This is an alternative JSON output handler for Busted,
      a unit testing framework for Lua.
      It is based on the json output handler that
      is bundled with Busted.
   ]],
   homepage = "https://github.com/eskerda/busted-jsonl",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["busted.outputHandlers.jsonl"] = "src/busted/outputHandlers/jsonl.lua",
   }
}
