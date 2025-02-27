local git_ref = '2025-01-18'
local modrev = git_ref:gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/latex3'

rockspec_format = '3.0'
package = 'l3backend'
version = modrev .. '-' .. specrev

description = {
  summary = 'LaTeX3 programming conventions',
  detailed =
  [[The l3backend bundle provides an implementation of the LaTeX3 programmers’ interface, as a set of packages that run under LaTeX2ε. The interface provides the foundation on which the LaTeX3 kernel and other future code are built: it is an API for TeX programmers. The packages are set up so that the LaTeX3 conventions can be used with regular LaTeX2ε packages.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://ctan.org/pkg/l3backend',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'dvips' },
  modules = {
    ['l3backend-luatex'] = 'tex/latex/l3backend/l3backend-luatex.lua'
  },
  install = {
    conf = {
      ['../tex/latex/l3backend/l3backend-dvipdfmx.def'] = 'tex/latex/l3backend/l3backend-dvipdfmx.def',
      ['../tex/latex/l3backend/l3backend-dvips.def'] = 'tex/latex/l3backend/l3backend-dvips.def',
      ['../tex/latex/l3backend/l3backend-dvisvgm.def'] = 'tex/latex/l3backend/l3backend-dvisvgm.def',
      ['../tex/latex/l3backend/l3backend-luatex.def'] = 'tex/latex/l3backend/l3backend-luatex.def',
      ['../tex/latex/l3backend/l3backend-pdftex.def'] = 'tex/latex/l3backend/l3backend-pdftex.def',
      ['../tex/latex/l3backend/l3backend-xetex.def'] = 'tex/latex/l3backend/l3backend-xetex.def',
    }
  }
}
