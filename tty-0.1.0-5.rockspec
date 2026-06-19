package = "tty"
version = "0.1.0-5"

source = {
  tag = "v0.1.0",
  url = "git+https://github.com/BlueLua/tty.git",
}

description = {
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    tty = {
      sources = { "src/tty.c" },
    },
    ["tty.types/tty"] = "types/tty.d.lua",
  },
}
