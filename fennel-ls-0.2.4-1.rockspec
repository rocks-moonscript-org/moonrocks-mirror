rockspec_format = "3.0"
package = "fennel-ls"
version = "0.2.4-1"
supported_platforms= {
    "!windows",
    "!win32",
}
source = {
   url = "git+https://git.sr.ht/~xerool/fennel-ls",
   tag = "0.2.4"
}
description = {
   summary = "A language server that analyzes Fennel, a lisp that compiles to Lua",
   detailed = "LSP magic for Fennel",
   homepage = "https://sr.ht/~xerool/fennel-ls",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "make",
   build_target = "fennel-ls",
   build_variables = {
      LUA = "$(LUA)",
   },
   install_pass = false,
   install = {
      bin = {
         ["fennel-ls"] = "fennel-ls"
      }
   }
}
