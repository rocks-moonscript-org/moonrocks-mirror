package = "luaucdn"
version = "0.0.3-0"
source = {
  url = "git://github.com/deepakjois/luaucdn",
  tag = "v0.0.3"
}
description = {
  summary = "Lua bindings for ucdn",
  homepage = "https://github.com/deepakjois/luaucdn",
  license = "MIT",
  maintainer = "Deepak Jois <deepak.jois@gmail.com>"
}
dependencies = {
  "lua ~> 5.2"
}
build = {
  type = "builtin",
  modules = {
    ucdn = "src/ucdn.lua",
    luaucdn = {"src/luaucdn/ucdn.c", "src/luaucdn/luaucdn.c"}
  }
}
