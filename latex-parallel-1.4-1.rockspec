local git_ref = '1.4'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/parallel'

rockspec_format = '3.0'
package = 'latex-parallel'
version = modrev .. '-' .. specrev

description = {
  summary = [[Typeset parallel texts]],
  detailed =
  [[ Provides a parallel environment which allows two potentially different texts to be typeset in two columns, while maintaining alignment. The two columns may be on the same page, or on facing pages.

This arrangement of text is commonly used when typesetting translations, but it can have value when comparing any two texts. ]],
  labels = { 'Parallel' },
  homepage = repo_url,
  license = 'LPPL-1.2'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = {}

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/parallel.zip',
  dir = 'parallel',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/parallel.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode parallel.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/parallel/parallel.pdf'] = 'parallel.pdf',
      ['../tex/latex/parallel/parallel.sty'] = 'parallel.sty',
    }
  }
}
