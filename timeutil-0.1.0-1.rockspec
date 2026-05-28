package = "timeutil"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/BlueLua/timeutil.git",
  tag = "v0.1.0",
}

description = {
  summary = "Small standalone wall-clock, monotonic time, and native sleep module for Lua",
  detailed = [[
timeutil is a small standalone C-backed Lua module that exposes wall-clock
time, monotonic elapsed time, and native blocking sleep in seconds.
  ]],
  homepage = "https://github.com/BlueLua/timeutil",
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
  },
  copy_directories = {
    "types",
  },
}
