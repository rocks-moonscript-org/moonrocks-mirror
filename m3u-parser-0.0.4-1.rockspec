rockspec_format = "3.0"
package = "m3u-parser"
version = "0.0.4-1"
source = {
   url = "git://github.com/pawanpaudel93/lua-m3u-parser",
   tag = "v0.0.2"
}
description = {
   summary = "A parser for m3u files.",
   detailed = [[
      A parser for m3u files.
      It parses the contents of the m3u file to a list of streams information which can be saved as a JSON/M3U file.
   ]],
   homepage = "https://github.com/pawanpaudel93/lua-m3u-parser",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson >= 2.1",
   "http >= 0.4",
   "lusc_luv >= 3.1"
}
build = {
   type = "builtin",
   modules = {
      ["m3u-parser"] = "src/m3u-parser/M3uParser.lua"
   }
}
test_dependencies = {
   "luaunit >= 3.4"
}
test = {
   type = "command",
   command = "lua tests/test_m3uparser.lua"
}
