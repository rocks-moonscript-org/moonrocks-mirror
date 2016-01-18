package = "lua_redis"
version = "1.0.0-1"
source = {
  url = "https://github.com/omrikiei/lua_redis",
  tag = "v0.1"
}
description = {
  summary = "A hiredis binding for lua, supporting multiple concurrent connection instances",
  detailed = [[
  
  ]],
  homepage = "http://",
  license = "MIT/X11"
}

dependencies = {
  "lua ~> 5.1"
}

external_dependencies = {
  HIREDIS = {
    header = "hiredis.h"
  }
}

build = {
  type = "make",
  build_variables = {
    CFLAGS="$(CFLAGS)",
    LIBFLAG="$(LIBFLAG)",
    LUA_INCDIR="$(LUA_INCDIR)",
    LUA_LIBDIR="$(LUA_LIBDIR)",
    LUA_BINDIR="$(LUA_BINDIR)",
    LUA="$(LUA)",
    LIBHIREDIS_INCDIR="$(HIREDIS_INCDIR)",
    LIBHIREDIS_DIR="$(HIREDIS_DIR)",
  },
  install_variables = {
    INST_PREFIX="$(PREFIX)",
    INST_BINDIR="$(BINDIR)",
    INST_LIBDIR="$(LIBDIR)",
    INST_LUADIR="$(LUADIR)",
    INST_CONFDIR="$(CONFDIR)",
  },
  modules = {
    ["lua_redis"] = "lua_redis.lua",
    ["lua_redis.connection"] = "luaredis_connection.lua",
    ["lua_redis.commands"] = "luaredis_commands.lua",
    ["lua_redis.connector"] = "luaredis_connector.lua"
  },
  install = {
    lib = { "src/redislib.so" },
    lua = { "src/lua_redis.lua", "src/luaredis_connection.lua", "src/luaredis_connector.lua", "src/luaredis_commands.lua" },
  }
}
