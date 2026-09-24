local git_ref = '2026-03-27'
local modrev = git_ref:gsub('-0', '-'):gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/tex-ini-files'

rockspec_format = '3.0'
package = 'tex-ini-files'
version = modrev .. '-' .. specrev

description = {
  summary = 'Model TeX format creation files',
  detailed =
  [[This bundle provides a collection of model .ini files for creating TeX formats. These files are commonly used to introduced distribution-dependent variations in formats. They are also used to allow existing format source files to be used with newer engines, for example to adapt the plain e-TeX source file to work with XeTeX and LuaTeX.]],
  labels = { 'LaTeX3' },
  homepage = 'https://github.com/latex3/tex-ini-files',
  license = 'CC0-1.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. "-" .. git_ref
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/generic/tex-ini-files.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
  patches = {
    -- https://github.com/RadioNoiseE/apltex/blob/52b75b9bc64bcf5543207e73875f39e7d4d88613/fmtdump/luatex.ini#L15
    ["add-latex-map.diff"] = [[
--- old/luatex.ini
+++ new/luatex.ini
@@ -9,4 +9,5 @@
 \input luatexiniconfig.tex
 \input load-unicode-data.tex
 \input etex.src
+\everyjob=\expandafter{\the\everyjob\pdfextension mapfile {luatex.map}}
 \dump
]]
  },
}
