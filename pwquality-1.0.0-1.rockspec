rockspec_format = "3.0"
package = "pwquality"
version = "1.0.0-1"
source = {
  url = "git://github.com/lkpot/lua-pwquality",
  tag = "v1.0.0"
}
description = {
  summary = "Lua bindings to libpwquality",
  detailed = [[
    This module provides Lua bindings to libpwquality, allowing its user to perform password quality checks.
  ]],
  homepage = "https://github.com/lkpot/lua-pwquality",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
external_dependencies = {
  LIBPWQUALITY = {
    header = "pwquality.h"
  }
}
build = {
  type = "cmake"
}
test_dependencies = { "busted" }
test = {
  type = "busted",
  flags = { "test-pwquality.lua" }
}
