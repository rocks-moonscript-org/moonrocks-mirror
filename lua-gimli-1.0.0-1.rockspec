package = "lua-gimli"
version = "1.0.0-1"
source = {
  url = "http://luiz.sdf.org/lua-gimli-1.0.0.zip",
  md5 = "2abdce299a3e5b32ed5faabac1a656c9"
}
description = {
  homepage = "https://gimli.cr.yp.to",
  license = "0BSD",
  summary = "A Lua crypto library based on the Gimli permutation.",
  maintainer = "luiz <luiz@sdf.org>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    gimli = { "lua-gimli.c", "gimli.c" }
  }
}
