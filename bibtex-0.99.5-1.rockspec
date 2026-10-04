-- local git_ref = 'texlive-2025.2'
local git_ref = 'svn78399'
-- local modrev = git_ref:gsub("^release%-", "")
local _git_ref = '0.99e'
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = "1"

local repo_url = 'https://github.com/TeX-Live/texlive-source'

rockspec_format = '3.0'
package = 'bibtex'
version = modrev .. '-' .. specrev


description = {
  summary = 'Process bibliographies (bib files) for LaTeX or other formats',
  detailed =
  [[BibTeX allows the user to store his citation data in generic form, while printing citations in a document in the form specified by a BibTeX style, to be specified in the document itself (one often needs a LaTeX citation-style package, such as natbib, as well).

BibTeX knows nothing about Unicode sorting algorithms or scripts, although it will pass on whatever bytes it reads. Its descendant bibtexu does support Unicode, via the ICU library. The older alternative bibtex8 supports 8-bit character sets.

Another Unicode-aware alternative is the (independently developed) biber program, used with the BibLaTeX package to typeset its output.]],
  labels = {},
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texlive-source-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
  }
end

build_dependencies = { }

dependencies = {  }

build = {
  type = 'command',
  build_command = [[
  mkdir work
  cd work
  ../configure --without-x
  make recurse
  mkdir -p texk/web2c
  cd texk/web2c
  eval "$(sed 's,auxdir/auxsub,texk/web2c,g' ../../subsubdir-conf.cmd)"
  make bibtex
]],
  install = {
    bin = {
      'work/texk/web2c/bibtex'
    }
  }
}
