local git_ref = '3.5'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/sttools'

rockspec_format = '3.0'
package = 'sttools'
version = modrev .. '-' .. specrev

description = {
  summary = [[Various macros]],
  detailed =
  [[A collection of tools and macros, providing:

    miscellaneous float control,
    page styles for floats,
    multipage tabulars,
    even columns at end of twocolumn region,
    switching between one- and two-column anywhere,]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/sttools.zip",
  dir = 'sttools'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/sttools.zip',
    dir = 'sttools'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'command',
  build_command = [[
      luatex --interaction=nonstopmode sttools.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/sttools/stfloats.pdf'] = 'stfloats.pdf',
      ['../doc/latex/sttools/floatpag.pdf'] = 'floatpag.pdf',
      ['../doc/latex/sttools/stabular.pdf'] = 'stabular.pdf',
      ['../doc/latex/sttools/cuted.pdf'] = 'cuted.pdf',
      ['../doc/latex/sttools/sttools.pdf'] = 'sttools.pdf',
      ['../doc/latex/sttools/flushend.pdf'] = 'flushend.pdf',
      ['../tex/latex/sttools/stfloats.sty'] = 'stfloats.sty',
      ['../tex/latex/sttools/floatpag.sty'] = 'floatpag.sty',
      ['../tex/latex/sttools/stabular.sty'] = 'stabular.sty',
      ['../tex/latex/sttools/cuted.sty'] = 'cuted.sty',
      ['../tex/latex/sttools/flushend.sty'] = 'flushend.sty',
    }
  }
}
