---@diagnostic disable: lowercase-global
package = "lresty-cli"
version = "0.3.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/lresty-cli",
  tag = "v0.3.0"
}

description = {
  summary = "This is a fork of the original resty-cli(perl script) rewritten in Lua.",
  detailed = [[
  Just to work without Perl, only based on the Lua interpreter.

  The lresty is a command-line tool, which can be used to run OpenResty's Lua
scripts directly off the command-line just like the lua or luajit cli tools.
It can be used to create various command-line utilities using OpenResty Lua.

This tool works by creating a head-less nginx instance, disabling daemon,
master_process, access_log, and other things it does not need.
No server {} is configured hence no listening sockets are involved at all.

The Lua code is initiated by the init_worker_by_lua directive and
run in the context of ngx.timer callback. So all of ngx_lua's Lua APIs available
in the ngx.timer callback context are also available in the resty utility.

Original: https://github.com/openresty/resty-cli (a perl script)
]],

  homepage = "https://gitlab.com/lua_rocks/lresty-cli",
  -- author = 'Swarg',
  license = "MIT",
}

dependencies = {
  'lua >= 5.1'
}

build = {
  type = "builtin",
  modules = {
    ['lresty_cli.app'] = 'src/lresty_cli/app.lua',
    ['lresty_cli.lib'] = 'src/lresty_cli/lib.lua',
  },
  install = {
    bin = {
      ['lresty'] = 'bin/lresty'
    }
  }
}
