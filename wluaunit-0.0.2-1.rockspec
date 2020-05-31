package = "wLuaUnit"
version = "0.0.2-1"

description = {
  summary = "Object oriented test framework for Lua",
  detailed = [[
    wLuaUnit is an object oriented test framework for Lua.
    Provides a TestCase and a TestRunner class.

    Internally it uses LuaUnit as unit test framework and mach as mocking framework.
    The TestRunner supports collecting code coverage via LuaCov.
  ]],
  license = "MIT",
  homepage = "https://github.com/wesen1/wLuaUnit"
}

source = {
  url = "git+https://github.com/wesen1/wLuaUnit.git",
  tag = "v0.0.2"
}

dependencies = {
  "lua >= 5.1",
  "luaunit >= 3.3-1",
  "mach >= 5.1-0",
  "classic = 0.1.0-1"
}

build = {
  type = "command",
  install_command = "cp -r src/wLuaUnit $(LUADIR)/wLuaUnit"
}
