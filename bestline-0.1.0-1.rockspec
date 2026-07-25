package = 'bestline'
version = '0.1.0-1'

source = {
  url = 'git+https://github.com/lvitals/lua-bestline.git',
  tag = 'v0.1.0',
}

description = {
  summary = 'Lua binding for the Bestline command line editing library',
  detailed = [[
    lua-bestline is a Lua binding for Bestline, a maintained fork of linenoise
    with UTF-8 editing, history search, multiline input, hints and completions.
  ]],
  homepage = 'https://github.com/lvitals/lua-bestline',
  license = 'MIT/BSD-2-Clause',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    bestline = {
      sources = { 'bestline.c', 'bestlinelib.c' },
    },
  },
}
