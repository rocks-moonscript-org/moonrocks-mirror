package = "uint"
version = "0.186-7"
source = {
    url = "git://github.com/SupTan85/lua-uint.git",
    tag = "186-7-beta"
}

description = {
    summary    = "Enable large-number arithmetic (bignum) in Lua, Pure Lua number library!",
    homepage   = "https://github.com/SupTan85/lua-uint.git",
    license    = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    uint = "src/int.lua"
  }
}
