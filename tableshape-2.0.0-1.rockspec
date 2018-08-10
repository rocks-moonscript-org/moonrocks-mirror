package = "tableshape"
version = "2.0.0-1"

source = {
  url = "git://github.com/leafo/tableshape.git",
  branch = "v2.0.0"
}

description = {
  summary = "Test the shape or structure of a Lua table",
  homepage = "https://github.com/leafo/tableshape",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["tableshape"] = "tableshape/init.lua",
  }
}

