---@diagnostic disable: lowercase-global
package = "qluarocks"
version = "0.3.1-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/qluarocks.git",
  tag = "v0.3.1",
}

description = {
  summary = "cli tool that allows you to to install several rocks at once",
  detailed = [[
  Simple cli wrapper around the original LuaRocks solves the issue of
  installing several packages at once with one command.

  Supports both the old luarocks version 2.x and the new 3.x one.
  Works on top of the original luarocks, which does not support installing
  multiple packages with one command.

  Usage example:

    qluarocks install lua-cjson LuaFileSystem luacheck ...whatever-you-want

  When specific versions of packages are needed, they can be specified
  using a comma:

    qluarocks install luasocket:3.1.0-1 luasec:1.3.2-1 dkjson:2.6-1

  There is also support for general options and key=value pairs per package:

    qluarocks --lua-version=5.1 \
              install lpeg lua-cjson luasqlite \
              luasql-postgres PGSQL_INCDIR=/usr/include/postgresql \
                              PGSQL_LIBDIR=/usr/lib/postgresql \
              http
  ]],
  homepage = "https://gitlab.com/lua_rocks/qluarocks",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  install = {
    bin = {
      ['qluarocks'] = 'bin/qluarocks'
    }
  },
  modules = {},
}
