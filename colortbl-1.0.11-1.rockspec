local git_ref = 'colortbl-1.0k'
local _git_ref = git_ref:gsub('.*%-', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/davidcarlisle/dpctex'

rockspec_format = '3.0'
package = 'colortbl'
version = modrev .. '-' .. specrev

description = {
  summary = 'Add colour to LaTeX tables',
  detailed =
  [[The package allows rows and columns to be coloured, and even individual cells.]],
  labels = { 'Colour', 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dpctex-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/colortbl.zip',
    dir = 'colortbl'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'latex-tools' }

build = {
  type = 'l3build',
}
