rockspec_format = "3.0"
package = "themoonlitknot"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/mna/TheMoonlitKnot",
   tag = "v0.1.1"
}
description = {
   detailed = "A Lua-powered web framework based on the lua-http web server and the PostgreSQL database.",
   homepage = "https://github.com/mna/TheMoonlitKnot",
   license = "BSD-3"
}
dependencies = {
   "lua >= 5.4",
   "ansicolors 1.0.2-3",
   "cqueues 20200726.54-0",
   "mna/luapgsql 1.6.1-1",
   "cqueues-pgsql 0.1-0",
   "http 0.4-0",
   "lpath 0.3.1-1",
   "luafn 0.3-1",
   "lualogging 1.6.0-2",
   "luaposix 35.1-1",
   "luashell 0.4-1",
   "net-url 1.1-1",
   "optparse 1.5-2",
   "xpgsql 0.6-1",
   "mna/lua-cjson 62fe2246ccb15139476e5a03648633ed69404250-2",
   "mna/lua-schema-validation 1.0-1",
   "mna/nanoid 0.1-1"
}
build = {
   type = "builtin",
   modules = {}
}
test_dependencies = {
   "busted 2.0.0-1",
   "inspect 3.1.3-0",
   "luacov 0.15.0-1",
   "luacov-html 1.0.0-1",
   "luassert 1.8.0-0",
   "process 1.9.1-1",
   "say 1.3-1"
}
test = {
   type = "busted"
}
