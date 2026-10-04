rockspec_format = "3.0"
package = "pkgbuild"
version = "2.0.0-1"
source = {
   url = "git+https://krei.lambdacreate.com/durrendal/lua-pkgbuild",
   tag = "v2.0.0"
}
description = {
   summary = "A Lua library for parsing Arch Linux PKGBUILD files",
   detailed = [[
- Parse PKGBUILD files into structured Lua tables
- Extract metadata fields (pkgname, pkgver, dependencies, etc.)
- Extract build function bodies (build, check, package, etc.)
- Handle multi-line arrays and bash variable expansions
- Support for all standard PKGBUILD fields
- Support for split packages
   ]],
   homepage = "https://krei.lambdacreate.com/durrendal/lua-pkgbuild",
   license = "0BSD"
}
dependencies = {
   "lua >= 5.1",
   "lpeg >- 1.0.2"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      pkgbuild = "src/pkgbuild.lua"
   }
}
test = {
   type = "busted",
   flags = {
      "--verbose"
   }
}
