package = "luna"
version = "0.2.0-0"

description = {
  summary = "luna api builder",
  homepage = "https://github.com/fnordpipe/luna",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/luna.git",
  tag = "v0.2.0",
}

dependencies = {
  "lua-cjson",
  "luafilesystem"
}

build = {
  type = "builtin",
  modules = {
    luna = "src/luna.lua"
  }
}
