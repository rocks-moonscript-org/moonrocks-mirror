--@package contoh
--@version >= 5.1
--@description "Sebuah cotnoh library Lua sederhana."
--@author Ahmad Daniar <foltyzxzhen@gmail.com>
--@license MIT

--@diagnostics disable:unused-var,unused-local,unused-arg

package = "contoh"
version = "1.0-1"
rockspec_format = "3.0"
source = {
  url = "git://github.com/LuaIndonesia/Contoh.git"
}
description = {
  summary = "Contoh library/modul Lua.",
  detailed = [[
    Ini adalah contoh sederhana library Lua untuk programming, debugging, testing, dll.
  ]],
  homepage = "https://github.com/LuaIndonesia/Contoh",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "busted >= 1.0"
}
build = {
  type = "builtin",
  modules = {
    ["contoh"] = "src/contoh.lua"
  }
}

test = {
  type = "busted",
  test = {
    "spec/contoh_spec.lua"
  }
}
