local git_ref = "772fcf8a01cf3b9bf140d63f534d8d0c929d69ea"
local modrev = '3.6'
local specrev = '1'

local repo_url = 'https://github.com/pfradin/luadraw'

rockspec_format = '3.0'
package = 'luadraw'
version = modrev .. '-' .. specrev

description = {
  summary = 'Lua-based mathematical graphs for LuaLaTeX',
  detailed =
  [[This package provides a LuaLaTeX environment for creating mathematical graphs in two and three dimensions using Lua code.

The resulting graphics are drawn with TikZ and can be saved automatically. The package combines the computational capabilities of Lua with the graphical flexibility of TikZ, making it suitable for programmatically generated diagrams, function plots, and other mathematical illustrations.]],
  labels = { 'Math', 'PGF TikZ', 'Graphics', 'LuaTeX' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

dependencies = { 'iftex', 'luacode', 'pgf', 'latex-tools', 'xkeyval' }

source = {
  url = repo_url .. "/archive/" .. git_ref .. ".zip",
  dir = package .. '-' .. git_ref
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/luatex/latex/luadraw.zip',
  }
end

build = {
  type = 'l3build',
}
