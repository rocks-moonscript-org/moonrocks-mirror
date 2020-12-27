package = "AC-LuaServer"
version = "0.0.2-1"

description = {
  summary = "Framework for AssaultCube Lua servers",
  license = "MIT",
  homepage = "https://github.com/wesen1/AC-LuaServer",
}

source = {
  url = "git+https://github.com/wesen1/AC-LuaServer.git",
  tag = "v0.0.2"
}

dependencies = {
  "lua >= 5.1",
  "classic = 0.1.0-1",
  "penlight >= 1.0, < 2.0",
  "lua-resty-template < 3.0",
  "ac-clientoutput"
}

build = {
  type = "command",
  install_command = "cp -r src/AC-LuaServer $(LUADIR)/AC-LuaServer"
}
