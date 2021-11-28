rockspec_format = "3.0"
package = "testcase"
version = "0.4.2-1"
source = {
   url = "git+https://github.com/mah0x211/lua-testcase.git",
   tag = "v0.4.2"
}
description = {
   summary = "a small helper tool to run the test files.",
   homepage = "https://github.com/mah0x211/lua-testcase",
   license = "MIT",
   maintainer = "Masatoshi Fukunaga"
}
dependencies = {
   "lua >= 5.1",
   "mah0x211/assertex >= 0.1.0",
   "mah0x211/isa >= 0.2",
   "mah0x211/nosigpipe ~> 0.1",
   "mah0x211/path ~> 1.1",
   "mah0x211/process >= 1.9.1",
   "mah0x211/selectex >= 0.1.0",
   "mah0x211/stringex >= 0.1.0"
}
build = {
   type = "builtin",
   modules = {
      testcase = "lib/testcase.lua",
      ["testcase.eval"] = "lib/eval.lua",
      ["testcase.exit"] = "lib/exit.lua",
      ["testcase.filesystem"] = "lib/filesystem.lua",
      ["testcase.getopts"] = "lib/getopts.lua",
      ["testcase.iohook"] = "lib/iohook.lua",
      ["testcase.printer"] = "lib/printer.lua",
      ["testcase.registry"] = "lib/registry.lua",
      ["testcase.runner"] = "lib/runner.lua",
      ["testcase.timer"] = {
         sources = {
            "src/timer.c"
         }
      }
   },
   install = {
      bin = {
         testcase = "bin/testcase.lua"
      }
   }
}
