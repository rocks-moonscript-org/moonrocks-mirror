rockspec_format = '3.0'
package = 'mhttp'
version = '0.1-1'

source = {
  url = 'git+https://github.com/mischief/mhttp.git',
  tag = 'v0.1',
}

description = {
  summary = 'HTTP/1.1 server and client over any event loop',
  detailed = [[
mhttp is an HTTP/1.1 server and client for Lua 5.4. The parser and the
serializer do no I/O; the server and the client use a small stream
interface, so any event loop or coroutine scheduler can drive them.
Framing is strict against request smuggling and response splitting.
]],
  homepage = 'https://github.com/mischief/mhttp',
  license = 'ISC',
  labels = { 'http', 'parser', 'sans-io' },
}

supported_platforms = { 'unix' }

-- The parser, the serializer, the router and mhttp.coro need only Lua.
-- The sockets, the loops, the handlers and the programs need luaposix.
dependencies = {
  'lua >= 5.4',
  'luaposix',
}

-- libtls is in OpenBSD base. On Linux, libretls gives it.
external_dependencies = {
  TLS = { header = 'tls.h', library = 'tls' },
}

-- Every Lua module must be in this list. test/rockspec.lua checks it.
build = {
  type = 'builtin',
  modules = {
    ['mhttp.sys'] = 'mhttp/sys.c',
    ['mhttp.tls.libtls_core'] = {
      sources = { 'mhttp/tls/libtls_core.c' },
      libraries = { 'tls' },
      incdirs = { '$(TLS_INCDIR)' },
      libdirs = { '$(TLS_LIBDIR)' },
    },
    ['mhttp.cgi'] = 'mhttp/cgi.lua',
    ['mhttp.client'] = 'mhttp/client.lua',
    ['mhttp.clock'] = 'mhttp/clock.lua',
    ['mhttp.coro'] = 'mhttp/coro.lua',
    ['mhttp.date'] = 'mhttp/date.lua',
    ['mhttp.headers'] = 'mhttp/headers.lua',
    ['mhttp'] = 'mhttp/init.lua',
    ['mhttp.io.event'] = 'mhttp/io/event.lua',
    ['mhttp.io.poll'] = 'mhttp/io/poll.lua',
    ['mhttp.io.posix'] = 'mhttp/io/posix.lua',
    ['mhttp.metrics'] = 'mhttp/metrics.lua',
    ['mhttp.parse'] = 'mhttp/parse.lua',
    ['mhttp.proxy'] = 'mhttp/proxy.lua',
    ['mhttp.router'] = 'mhttp/router.lua',
    ['mhttp.server'] = 'mhttp/server.lua',
    ['mhttp.static'] = 'mhttp/static.lua',
    ['mhttp.status'] = 'mhttp/status.lua',
    ['mhttp.syntax'] = 'mhttp/syntax.lua',
    ['mhttp.tls'] = 'mhttp/tls.lua',
    ['mhttp.tls.libtls'] = 'mhttp/tls/libtls.lua',
    ['mhttp.url'] = 'mhttp/url.lua',
    ['mhttp.wire'] = 'mhttp/wire.lua',
    ['mhttpx.daemon'] = 'mhttpx/daemon.lua',
    ['mhttpx.rules'] = 'mhttpx/rules.lua',
  },
  install = {
    bin = {
      mhttpx = 'bin/mhttpx',
      mhttpd = 'bin/mhttpd',
    },
  },
}

test = {
  type = 'command',
  script = 'test/run.lua',
}
