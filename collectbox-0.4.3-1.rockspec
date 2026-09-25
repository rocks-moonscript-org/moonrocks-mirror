local git_ref = 'v0.4c'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

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
  labels = { 'Boxing' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. _git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/collectbox.tds.zip',
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      -- ['../doc/latex/collectbox/collectbox.pdf'] = 'collectbox.pdf',
      ['../tex/latex/collectbox/collectbox.sty'] = 'collectbox.sty',
    }
  }
}
