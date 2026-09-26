local git_ref = 'ctex-v2.6.5'
local modrev = git_ref:gsub('.*%-v', '')
local specrev = '1'

local repo_url = 'https://github.com/CTeX-org/ctex-kit'

rockspec_format = '3.0'
package = 'ctex'
version = modrev .. '-' .. specrev

description = {
  summary = [[LaTeX classes and packages for Chinese typesetting]],
  detailed =
  [[ctex is a collection of macro packages and document classes for LaTeX Chinese typesetting.]],
  labels = { 'Book publication', 'Class', 'Chinese' },
  homepage = 'http://www.ctex.org/',
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base', 'ctex-support == ' .. modrev }

dependencies = { 'chinese-jfm', 'l3kernel', 'fontspec', 'zhnumber', 'fandol' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ctex-kit-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/language/chinese/ctex.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
