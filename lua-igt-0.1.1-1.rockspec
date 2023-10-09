rockspec_format = "3.0"
package = "lua-igt"
version = "0.1.1-1"
source = {
   url = "git://github.com/palasimi/lua-igt",
   tag = "v0.1.1"
}
description = {
   summary = "Pure lua module for converting interlinear glosses to HTML",
   detailed = [[
      Pure lua module for converting interlinear glosses to HTML.
      Available as a library and as a pandoc filter.
   ]],
   homepage = "https://github.com/palasimi/lua-igt",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      igt = "src/init.lua",
      ["igt.html"] = "src/html.lua",
      ["igt.parser"] = "src/parser.lua",
      ["igt.strings"] = "src/strings.lua"
   }
}
test_dependencies = {
   "busted",
   "luacheck",
   "amalg"
}
test = {
   type = "command",
   script = "scripts/test.lua"
}
