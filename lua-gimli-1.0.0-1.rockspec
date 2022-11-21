package = "lua-gimli"
version = "1.0.0-1"
source = {
  url = "http://luiz.sdf.org/lua-gimli-1.0.0.zip",
  md5 = "9f7ebd4b90ec1cbee86ea18860fa0b11"
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
