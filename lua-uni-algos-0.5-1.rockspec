local git_ref = 'v0.5'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

local repo_url = 'https://github.com/latex3/lua-uni-algos'

rockspec_format = '3.0'
package = 'lua-uni-algos'
version = modrev .. '-' .. specrev

description = {
  summary = 'Unicode algorithms for LuaTeX',
  detailed =
  [[Lua code working with Unicode data has to deal with quite some challenges. For example there are many canonically equivalent sequences which should be treated in the same way, and even identifying a single character becomes quite different once you have to deal with all kinds of combining characters, emoji sequences and syllables in different scripts.

  Therefore lua-uni-algos wants to build a collection of small libraries implementing algorithms to deal with lots of the details in Unicode, such that authors of LuaTeX packages can focus on their actual functionality instead of having to fight against the peculiarities of Unicode.

  Given that this package provides Lua modules, it is only useful in Lua(HB)TeX. Additionally, it expects an up-to-date version of the unicode-data package to be present.

  This package is intended for package authors only; no user-level functionality provided.]],
  labels = { 'Unicode', 'LuaTeX' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = {
   "lua >= 5.1",
   "unicode-data"
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/luatex/generic/lua-uni-algos.zip'
  }
end

build = {
  type = 'l3build',
}
