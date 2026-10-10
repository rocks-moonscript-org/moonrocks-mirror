local git_ref = '2.1'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/bigfoot'

rockspec_format = '3.0'
package = 'bigfoot'
version = modrev .. '-' .. specrev

description = {
  summary = [[Footnotes for critical editions]],
  detailed =
  [[The package aims to provide a ‘one-stop’ solution to requirements for footnotes. It offers:

  Multiple footnote apparatus superior to that of manyfoot
  Footnotes can be formatted in separate paragraphs, or be run into a single paragraph (this choice may be selected per footnote series);
  Things you might have expected (such as \verb-like material in footnotes, and colour selections over page breaks) now work.

  Note that the majority of the bigfoot package's interface is identical to that of manyfoot; users should seek information from that package's documentation.

  The bigfoot bundle also provides the perpage and suffix packages.]],
  labels = { 'Footnote' },
  homepage = repo_url,
  license = 'GPL-2.0'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'ncctools', 'etex', 'latex-tools' }

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/' .. package .. '.zip',
  dir = package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/bigfoot.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode bigfoot.ins
  ]],
  install = {
    conf = {
      ['../tex/latex/bigfoot/bigfoot.sty'] = 'bigfoot.sty',
      ['../tex/latex/bigfoot/perpage.sty'] = 'perpage.sty',
      ['../tex/latex/bigfoot/suffix.sty'] = 'suffix.sty',
      ['../doc/latex/bigfoot/bigfoot.pdf'] = 'bigfoot.pdf',
      ['../doc/latex/bigfoot/perpage.pdf'] = 'perpage.pdf',
      ['../doc/latex/bigfoot/suffix.pdf'] = 'suffix.pdf',
    }
  }
}
