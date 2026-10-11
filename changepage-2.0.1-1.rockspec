local git_ref = 'changepage-v2.0a'
local _git_ref = git_ref:gsub('.*%-v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/herries-press'

rockspec_format = '3.0'
package = 'changepage'
version = modrev .. '-' .. specrev

dependencies = { 'l3kernel', 'knuth-lib' }

description = {
  summary = 'Change the page layout in the middle of a document',
  detailed =
  [[The package provides broadly similar functionality to changepage, with which it is distributed. It is, however, considered obsolete, and should not be used in new documents.]],
  labels = { 'Geometry', 'Obsolete' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'herries-press-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/changepage.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
