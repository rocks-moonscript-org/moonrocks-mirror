local git_ref = '1.2a'
local modrev = git_ref:gsub('[^0-9.]', ''):gsub('0+(%d)', '%1')
local __git_ref = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'luacode'
version = modrev .. '-' .. specrev

description = {
  summary = 'Helper for executing Lua code from within TeX',
  detailed =
  [[Executing Lua code from within TeX with directlua can sometimes be tricky: there is no easy way to use the percent character, counting backslashes may be hard, and Lua comments don’t work the way you expect. The package provides the \luaexec command and the luacode(*) environments to help with these problems.]],
  labels = { 'Lua support', 'LuaTeX' },
  homepage = 'https://ctan.org/pkg/luacode',
  license = 'LPPL-1.3c'
}

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/luacode.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/luatex/latex/luacode.tds.zip',
    dir = '.'
  }
end

dependencies = { 'iftex', 'luatexbase' }

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' }
}
