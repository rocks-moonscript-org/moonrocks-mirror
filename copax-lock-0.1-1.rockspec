package = "copax-lock"
version = "0.1-1"
source = {
  url = "https://github.com/brunoos/copax-lock/archive/v0.1.tar.gz",
  dir = "copax-lock-0.1"
}
description = {
  summary = "Lock for copas.",
  homepage = "https://github.com/brunoos/copax-lock",
  license = "MIT",
}
dependencies = {
  "lua   >= 5.1",
  "copas >= 2.0"
}
build = {
  type = "builtin",
  modules = {
    ["copax.lock"] = "lock.lua"
  }
}
