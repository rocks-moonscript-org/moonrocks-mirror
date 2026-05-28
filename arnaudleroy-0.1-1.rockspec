package = "arnaudleroy"
version = "0.1-1"
source = {
  url = "git://github.com/arnaudleroy-studio/arnaudleroy-lua",
  tag = "v0.1"
}
description = {
  summary = "Developer utilities and project toolkit by Arnaud Leroy",
  detailed = [[Portfolio utilities for managing multiple data platforms. Includes helpers for entity management, scoring systems, token estimation, and multi-language content. Built by Arnaud Leroy — building data platforms at dropthe.org and coffeetrove.com.]],
  homepage = "https://arnaudleroy.com",
  license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = {
  type = "builtin",
  modules = {
    ["arnaudleroy"] = "src/arnaudleroy.lua"
  }
}
