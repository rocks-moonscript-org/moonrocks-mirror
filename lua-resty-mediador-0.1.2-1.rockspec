package = "lua-resty-mediador"
version = "0.1.2-1"

description = {
  summary  = "Mediador, determine address of proxied request and IP handling",
  homepage = "https://github.com/Mashape/lua-resty-mediador",
  license  = "MIT"
}

source = {
  url    = "git://github.com/mashape/lua-resty-mediador.git",
  branch = "v0.1.2"
}

dependencies = {
    "luabitop"
}

build = {
  type    = "builtin",
  modules = {
    ["resty.mediador.ip"]    = "lib/resty/mediador/ip.lua",
    ["resty.mediador.proxy"] = "lib/resty/mediador/proxy.lua"
  }
}
