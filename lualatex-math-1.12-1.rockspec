local git_ref = 'c4c7e6323923970e52754da00d04cf0983f67b7c'
local modrev = '1.12'
local specrev = '1'

local repo_url = 'https://github.com/phst/lualatex-math'

rockspec_format = '3.0'
package = 'lualatex-math'
version = modrev .. '-' .. specrev

description = {
  summary = 'Fixes for mathematics-related LuaLaTeX issues',
  detailed =
  [[The package patches a few commands of the LaTeX2ε kernel and the amsmath and mathtools packages to be more compatible with the LuaTeX engine. It is only meaningful for LuaLaTeX documents containing mathematical formulas, and does not exhibit any new functionality. The fixes are mostly moved from the unicode-math package to this package since they are not directly related to Unicode mathematics typesetting.]],
  labels = { 'LuaTeX', 'Maths' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/lualatex-math.zip',
    dir = 'lualatex-math'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'etoolbox', 'luatexbase', 'filehook' }

build = {
  type = 'l3build',
}
