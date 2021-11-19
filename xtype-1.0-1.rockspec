package = "xtype"
version = "1.0-1"
source = {
  url = "git://github.com/ImagicTheCat/lua-xtype",
  tag = "1.0"
}

description = {
  summary = "A dynamic type system library for Lua.",
  detailed = [[
xtype, or Extended Type, is a dynamic type system library for Lua.
  ]],
  homepage = "https://github.com/ImagicTheCat/lua-xtype",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}

build = {
  type = "builtin",
  modules = {
    Luaseq = "src/xtype.lua"
  }
}
