package = "Coxpcall"

version = "1.14.0-1"

source = {
  url = "https://github.com/keplerproject/coxpcall/archive/v1_14_0.zip",
  dir = "coxpcall-1_14_0",
}

description = {
  summary = "Coroutine safe xpcall and pcall",
  detailed = [[
 Encapsulates the protected calls with a coroutine based loop, so errors can
 be dealed without the usual Lua 5.x pcall/xpcall issues with coroutines
 yielding inside the call to pcall or xpcall.
  ]],
  license = "MIT/X11",
  homepage = "http://coxpcall.luaforge.net"
}

dependencies = {
   "lua >= 5.1, < 5.3"
}

build = {
   type = "builtin",
   modules = { coxpcall = "src/coxpcall.lua" }
}
