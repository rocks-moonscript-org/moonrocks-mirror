package = "AC-ClientOutput"
version = "1.1.0-1"

description = {
  summary = "Library for formatting outputs to clients for AssaultCube Lua servers",
  detailed = [[
    AC-ClientOutput provides an API to format strings and tables for the clients of an AssaultCube Lua server.
  ]],
  license = "MIT",
  homepage = "https://github.com/wesen1/AC-ClientOutput",
}

source = {
  url = "git+https://github.com/wesen1/AC-ClientOutput.git",
  tag = "v1.1.0"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "command",
  install_command = "cp -r src/AC-ClientOutput $(LUADIR)/AC-ClientOutput"
}
