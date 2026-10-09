local git_ref = '0.1e'
local modrev = git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/makecell'

rockspec_format = '3.0'
package = 'makecell'
version = modrev .. '-' .. specrev

description = {
  summary = [[Tabular column heads and multilined cells]],
  detailed =
  [[This package supports common layouts for tabular column heads in whole documents, based on one-column tabular environment. In addition, it can create multi-lined tabular cells.

The Package also offers:

    a macro which changes the vertical space around all the cells in a tabular environment (similar to the function of the tabls package, but using the facilities of the array)
    macros for multirow cells, which use the facilities of the multirow package;
    macros to number rows in tables, or to skip cells;
    diagonally divided cells;
    horizontal lines in tabular environments with defined thickness.]],
  labels = { 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/makecell.zip",
  dir = 'makecell'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/makecell.zip',
    dir = 'makecell'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'latex-base' }

build = {
  type = 'command',
  patches = {
-- ! String contains an invalid utf-8 sequence.
    ["add-ins.diff"] = [[
--- /dev/null
+++ new/makecell.ins
@@ -0,0 +1,11 @@
+\input docstrip.tex
+
+\usedir{tex/latex/makecell}
+
+\keepsilent
+\askforoverwritefalse
+
+\generate{\file{makecell.sty}{\from{makecell.dtx}{package}}}
+\generate{\file{tablists.sty}{\from{tablists.dtx}{package}}}
+
+\endbatchfile
]],
  },
  build_command = [[
      luatex --interaction=nonstopmode makecell.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/makecell/makecell.pdf'] = 'makecell.pdf',
      ['../doc/latex/makecell/makecell-rus.pdf'] = 'makecell-rus.pdf',
      ['../tex/latex/makecell/makecell.sty'] = 'makecell.sty',
      ['../doc/latex/makecell/tablists.pdf'] = 'tablists.pdf',
      ['../doc/latex/makecell/tablists-rus.pdf'] = 'tablists-rus.pdf',
      ['../tex/latex/makecell/tablists.sty'] = 'tablists.sty',
    }
  }
}
