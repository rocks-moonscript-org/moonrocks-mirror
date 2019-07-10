rockspec_format = "3.0"
package = "lua-syntect"
version = "0.1.0-1"
source = {
   url = "git://github.com/hishamhm/lua-syntect",
   tag = "0.1.0",
}
description = {
   summary = "Minimal Lua binding for syntect, a syntax highlighting library",
   detailed = [[
      This is a minimal Lua binding for syntect, a syntax highlighting library
      written in Rust.
   ]],
   homepage = "https://github.com/hishamhm/lua-syntect",
   license = "MIT"
}
build_dependencies = {
   "luarocks-build-rust"
}
build = {
   type = "rust",
   modules = {
      "syntect"
   }
}
