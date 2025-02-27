local git_ref = '3.1.10'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/pgf-tikz/pgf'

rockspec_format = '3.0'
package = 'pgf'
version = modrev .. '-' .. specrev

description = {
  summary = 'Create PostScript and PDF graphics in TeX',
  detailed =
  [[PGF is a macro package for creating graphics. It is platform- and format-independent and works together with the most important TeX backend drivers, including pdfTeX and dvips. It comes with a user-friendly syntax layer called TikZ.

  Its usage is similar to pstricks and the standard picture environment. PGF works with plain (pdf-)TeX, (pdf-)LaTeX, and ConTeXt. Unlike pstricks, it can produce either PostScript or PDF output.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://pgf-tikz.github.io/',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/graphics/pgf/base/pgf.tds.zip',
  }
end

build_dependencies = { 'luatex', 'texrocks', 'latex-base' }

dependencies = { 'everyshi', 'latex-graphics', 'xcolor' }

build = {
  type = 'command',
  build_command = [[
    mv tex/generic/pgf/lua .
    mv tex/generic/pgf/graphdrawing/lua/pgf/* lua/pgf
    mv tex/generic/pgf/libraries/luamath/pgf/luamath lua/pgf
    mv tex/generic/pgf/graphdrawing/lua/pgf.lua lua
    rm -rf tex/generic/pgf/graphdrawing/lua/LUA_CODING_STYLE
  ]],
  copy_directories = { 'doc', 'tex', 'lua' },
}
