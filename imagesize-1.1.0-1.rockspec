package = "imagesize"
version = "1.1.0-1"

source = {
  url = "git+https://github.com/leafo/imagesize.git",
  tag = "v1.1.0"
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
    ["imagesize.mp4"] = "imagesize/mp4.lua",
  }
}
