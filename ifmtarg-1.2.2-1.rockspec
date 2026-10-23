local git_ref = 'ifmtarg-v1.2b'
local _git_ref = git_ref:gsub('.*%-v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/herries-press'

rockspec_format = '3.0'
package = 'ifmtarg'
version = modrev .. '-' .. specrev

description = {
  summary = 'If-then-else command for processing potentially empty arguments',
  detailed =
  [[This package provides a command for the LaTeX programmer for testing whether an argument is empty.]],
  labels = { 'Macro support' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'herries-press-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/ifmtarg.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/ifmtarg/ifmtarg.sty'] = 'ifmtarg.sty',
    },
  }
}
