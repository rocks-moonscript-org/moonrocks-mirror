package = "luna"
version = "0.0.2-0"

description = {
  summary = "luna api builder",
  homepage = "https://github.com/fnordpipe/luna",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/luna.git",
  tag = "v0.0.2",
}

dependencies = {
  "lapis 1.6.0",
}

build = {
  type = "builtin",
  modules = {
    luna = "src/luna.lua",
    config = "src/config.lua"
  }
}
