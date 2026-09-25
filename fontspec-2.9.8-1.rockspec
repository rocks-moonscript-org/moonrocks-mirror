local git_ref = 'v2.9h'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/latex3/fontspec'

rockspec_format = '3.0'
package = 'fontspec'
version = modrev .. '-' .. specrev

dependencies = { 'l3packages', 'luaotfload' }

description = {
  summary = 'Advanced font selection in XeLaTeX and LuaLaTeX',
  detailed =
  [[Fontspec is a package for XeLaTeX and LuaLaTeX. It provides an automatic and unified interface to feature-rich AAT and OpenType fonts through the NFSS in LaTeX running on XeTeX or LuaTeX engines.

  The package requires the l3kernel and xparse bundles from the LaTeX3 development team.]],
  labels = { 'Font sel', 'XeTeX', 'LuaTeX' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. _git_ref,
}

build_dependencies = { 'luatex', 'latex-base' }

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'l3build',
}
