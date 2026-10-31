local git_ref = '4.4'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/index'

rockspec_format = '3.0'
package = 'index'
version = modrev .. '-' .. specrev

description = {
  summary = [[Extended index for LaTeX including multiple indexes]],
  detailed =
  [[This is a reimplementation of LaTeX’s indexing macros to provide better support for indexing. For example, it supports multiple indexes in a single document and provides a more robust \index command. It supplies short hand notations for the \index command (^{word}) and a * variation of \index (abbreviated _{word}) that prints the word being indexed, as well as creating an index entry for it.]],
  labels = { 'Index', 'Index multi' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = {  }

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/' .. package .. '.zip',
  dir = package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/index.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode index.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/index/index.pdf'] = 'index.pdf',
      ['../tex/latex/index/index.sty'] = 'index.sty',
    }
  }
}
