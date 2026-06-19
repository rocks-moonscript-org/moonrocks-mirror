package = "timeutil"
version = "0.1.0-3"

source = {
  tag = "v0.1.0",
  url = "git+https://github.com/BlueLua/timeutil.git",
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
    timeutil = {
      sources = { "src/timeutil.c" },
    },
    ["timeutil.types/timeutil"] = "types/timeutil.d.lua",
  },
}
