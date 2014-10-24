package = "lua-resty-hipchat"
version = "v1.0-1"

source = {
  url = "git://github.com/jamesmarlowe/lua-resty-hipchat.git"
}

description = {
  summary = "Hipchat library for Lua and OpenResty",
  homepage = "https://github.com/jamesmarlowe/lua-resty-hipchat",
  license = "BSD",
  maintainer = "jameskmarlowe@gmail.com"
}

dependencies = {
  "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["resty.hipchat"] = "lib/resty/hipchat.lua"
    }
}
