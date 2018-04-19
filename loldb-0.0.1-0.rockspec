package = "loldb"
version = "0.0.1-0"

description = {
  summary = "lua objects leveldb wrapper",
  homepage = "https://github.com/fnordpipe/loldb",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/loldb.git",
  tag = "v0.0.1",
}

dependencies = {
  "lua-cjson",
  "lua-leveldb"
}

build = {
  type = "builtin",
  modules = {
    loldb = "src/loldb.lua"
  }
}
