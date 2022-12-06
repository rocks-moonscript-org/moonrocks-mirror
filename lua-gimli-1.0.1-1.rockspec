package = "lua-gimli"
version = "1.0.1-1"
source = {
  url = "http://luiz.sdf.org/lua-gimli-1.0.1.zip",
  md5 = "56a950ace206732b97ee21a8a8f1e05d"
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
