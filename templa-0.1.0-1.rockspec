package = "templa"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/colourlabs/templa.git",
  tag = "v0.1.0"
}

description = {
  summary = "embedded lua templates for the modern day ",
  homepage = "https://github.com/colourlabs/templa",
  license = "MIT"
}

dependencies = {
  "lua >= 5.4"
}

build = {
  type = "builtin",
  modules = {
    templa = "dist/templa.lua"
  }
}