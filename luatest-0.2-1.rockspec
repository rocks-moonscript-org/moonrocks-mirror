rockspec_format = "3.0"
package = "luatest"
version = "0.2-1"
source = {
   url = "git+https://github.com/mblayman/luatest"
}
description = {
   summary = "A Lua test runner",
   detailed = "A Lua test runner",
   homepage = "https://github.com/mblayman/luatest",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "ansicolors",
   "argparse",
   "inspect",
   "lua-toml",
   "luassert",
   "luacov",
   "luacov-reporter-lcov",
   "penlight"
}
build = {
   type = "builtin",
   install = {
      bin = {
         "bin/luatest"
      }
   }
}
