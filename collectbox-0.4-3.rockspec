local git_ref = 'v0.4'
local modrev = git_ref:gsub('v', '')
local specrev = '3'

local repo_url = 'https://github.com/MartinScharrer/collectbox/'

rockspec_format = '3.0'
package = 'collectbox'
version = modrev .. '-' .. specrev

description = {
  summary = 'Collect and process macro arguments as boxes',
  detailed =
  [[The package provides macros to collect and process a macro argument (i.e., something which looks like a macro argument) as a horizontal box rather than as a real macro argument.

  The “arguments” are stored as if they had been saved by \savebox or by the lrbox environment. Grouping tokens \bgroup and \egroup may be used, which allows the user to have the beginning and end of a group in different macro invocations, or to place them in the begin and end code of an environment. Arguments may contain verbatim material or other special use of characters.

  The macros were designed for use within other macros.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'lualatex', 'texrocks', 'ydoc' }

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. version.char(specrev + 0x60) .. '/' .. package .. '.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'command',
  build_command = [[
    texrocks install &&
      lualatex --interaction=nonstopmode collectbox.ins
]],
  install = {
    conf = {
      ['../doc/latex/collectbox/collectbox.pdf'] = 'collectbox.pdf',
      ['../tex/latex/collectbox/collectbox.sty'] = 'collectbox.sty',
    }
  }
}
