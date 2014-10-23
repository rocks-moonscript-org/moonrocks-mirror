package = "lua-resty-github"
version = "v1.0-1"

source = {
  url = "git://github.com/jamesmarlowe/lua-resty-github.git"
}

description = {
  summary = "Github issue library for Lua and OpenResty",
  homepage = "https://github.com/jamesmarlowe/lua-resty-github",
  license = "BSD",
  maintainer = "jameskmarlowe@gmail.com"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson"
}

build = {
    type = "builtin",
    modules = {
        ["resty.github"] = "lib/resty/github.lua"
    }
}
