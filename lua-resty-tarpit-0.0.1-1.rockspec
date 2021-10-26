package = "lua-resty-tarpit"
version = "0.0.1-1"
source = {
   url = "git+https://git.sr.ht/~ryanford/lua-resty-tarpit"
}
description = {
   summary = "lua-resty-tarpit - capture and delay unwanted requests",
   detailed = "lua-resty-tarpit - capture and delay unwanted requests",
   homepage = "https://git.sr.ht/~ryanford/lua-resty-tarpit",
   license = "GPLv3+"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson",
}
build = {
   type = "builtin",
   modules = {
      tarpit = "init.lua"
   },
}
