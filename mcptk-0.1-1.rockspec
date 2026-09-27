rockspec_format = '3.0'
package = 'mcptk'
version = '0.1-1'

source = {
  url = 'git+https://git.offblast.org/mischief/mcptk.git',
  tag = 'v0.1',
}

description = {
  summary = 'Write MCP servers in lua',
  detailed = [[
mcptk speaks the Model Context Protocol over stdio, so a lua script
becomes a tool server that claude code or clm can launch. Declare the
arguments of a tool once and mcptk builds the JSON Schema a client
reads and the validator a call goes through.

The core has no dependencies and runs on lua 5.1 through 5.4 and
luajit. Install luv for the optional async transport, where each call
runs in its own coroutine.
]],
  homepage = 'https://git.offblast.org/mischief/mcptk',
  license = 'MIT',
  labels = { 'mcp', 'llm', 'json-rpc', 'claude' },
}

supported_platforms = { 'unix' }

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    ['mcptk'] = 'mcptk/init.lua',
    ['mcptk.content'] = 'mcptk/content.lua',
    ['mcptk.json'] = 'mcptk/json.lua',
    ['mcptk.luv'] = 'mcptk/luv.lua',
    ['mcptk.schema'] = 'mcptk/schema.lua',
    ['mcptk.server'] = 'mcptk/server.lua',
    ['mcptk.stdio'] = 'mcptk/stdio.lua',
  },
  copy_directories = {},
}

test = {
  type = 'command',
  command = 'lua test/run.lua',
}
