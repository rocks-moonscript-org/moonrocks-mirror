package = "Static"
-- SemVer: 2.1.3
-- Revisión: 0
version = "2.1.3-0"
source  = {
  url = "git://github.com/Miqueas/Static",
  tag = "v2.1.3"
}

description = {
  summary  = "Static typing support in pure Lua",
  detailed = "Use the power of static typing in your Lua scripts",
  homepage = "https://github.com/Miqueas/Static",
  license  = "zlib"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    Static = "Static.lua"
  }
}