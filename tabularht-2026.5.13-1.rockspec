local git_ref = 'release-2026-05-13'
local modrev = git_ref:gsub("^release%-", ""):gsub('%-0+', '-'):gsub('%-', '.')
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/tabularht'

rockspec_format = '3.0'
package = 'tabularht'
version = modrev .. '-' .. specrev

dependencies = { 'latex-graphics' }

description = {
  summary = 'Tabular extensions originally submitted by Heiko Oberdiek',
  detailed =
  [[The bundle comprises packages to provide:

    tabularht: tabulars with height specification;
    tabularkv: key value interface for tabular parameters.

Each of the packages is represented by two files, a .dtx (documented source) and a PDF file. The .ins file necessary for installation is extracted by running the .dtx file with Plain TeX.]],
  labels = { 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/tabularht.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'l3build',
}
