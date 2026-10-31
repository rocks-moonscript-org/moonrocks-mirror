local git_ref = 'v1.8'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/pdfcol'

rockspec_format = '3.0'
package = 'pdfcol'
version = modrev .. '-' .. specrev

dependencies = { 'ltxcmds', 'infwarerr', 'iftex', 'latex-graphics', 'etoolbox' }

description = {
  summary = 'Macros for maintaining colour stacks under pdfTeX',
  detailed =
  [[Since version 1.40 pdfTeX supports colour stacks. The driver file pdftex.def for package color defines and uses a main colour stack since version v0.04b.

This package is intended for package writers. It defines macros for setting and maintaining new colour stacks.]],
  labels = { 'Colour' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/pdfcol.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'l3build',
}
