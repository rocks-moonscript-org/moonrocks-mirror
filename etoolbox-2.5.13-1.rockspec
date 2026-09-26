local git_ref = 'v2.5m'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/josephwright/etoolbox'

rockspec_format = '3.0'
package = 'etoolbox'
version = modrev .. '-' .. specrev

description = {
  summary = [[e-TeX tools for LaTeX]],
  detailed =
  [[The package is a toolbox of programming facilities geared primarily towards LaTeX class and package authors. It provides LaTeX frontends to some of the new primitives provided by e-TeX as well as some generic tools which are not strictly related to e-TeX but match the profile of this package. Note that the initial versions of this package were released under the name elatex.

  The package provides functions that seem to offer alternative ways of implementing some LaTeX kernel commands; nevertheless, the package will not modify any part of the LaTeX kernel.]],
  labels = { 'Macro support', 'e-TeX' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

dependencies = { 'etex' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. _git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/etoolbox.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
