package = "giflib"
version = "2.0.0-1"

source = {
  url = "git+https://github.com/leafo/giflib.git",
  tag = "v2.0.0"
}

description = {
  summary = "LuaJIT FFI binding to giflib",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["giflib"] = "giflib/init.lua",
    ["giflib.lib"] = "giflib/lib.lua",
  }
}
