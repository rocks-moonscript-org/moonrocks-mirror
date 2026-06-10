package = "ioqwerty"
version = "0.0.1-1"

source = {
  url = "git+https://github.com/ioqwerty/ioqwerty.git",
  tag = "v0.0.1",
}

description = {
  summary = "Name reservation for ioqwerty.",
  detailed = "Name reservation package for ioqwerty.",
  homepage = "https://github.com/ioqwerty/ioqwerty",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ioqwerty = "src/ioqwerty.lua",
  },
}
