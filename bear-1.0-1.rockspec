package = "bear"
version = "1.0-1"
source = {
  url = "git+ssh://git@github.com/dijeferson/lua-bear.git",
}
description = {
  summary = "A Lua library to interact with Bear the note taking app for macOS, iOS, and iPadOS.",
  homepage = "https://github.com/dijeferson/lua-bear",
  license = "MIT",
}
dependencies = {
  "lua >= 5.4",
  "luasocket >= 3.0",
  "luasec >= 1.1 ",
  "busted >= 2.0",
}
build = {
  type = "builtin",
  modules = {
    ["bear"] = "lua/bear/init.lua",
  },
}
