package = "imagesize"
version = "1.0.0-1"

source = {
  url = "git://github.com/leafo/imagesize.git",
  branch = "v1.0.0"
}

description = {
  summary = "Determine the dimensions of common image formats from minimal bytes",
  homepage = "https://github.com/leafo/imagesize",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lpeg"
}

build = {
  type = "builtin",
  modules = {
    ["imagesize"] = "imagesize/init.lua",
  }
}

