local git_ref = '0.9.1'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/sauerj'

rockspec_format = '3.0'
package = 'sauerj'
version = modrev .. '-' .. specrev

description = {
  summary = [[A bundle of utilities by Jonathan Sauer]],
  detailed =
  [[The bundle consists of:

    a tool for collecting text for later re-use,
    a tool for typesetting the "meta-information" within a text,
    a tool for use in constructing macros with multiple optional parameters,
    a package for multiple column parallel texts,
    a tool for processing key-value structured lists, and
    macros for typesetting a number as a German-language string.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'latex-graphics' }

source = {
  url = 'https://github.com/ustctug/texrocks/releases/download/0.0.1/' .. package .. '.zip',
  dir = package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/sauerj.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    luatex --interaction=nonstopmode collect.ins
    luatex --interaction=nonstopmode metainfo.ins
    luatex --interaction=nonstopmode optparams.ins
    luatex --interaction=nonstopmode parcolumns.ins
    luatex --interaction=nonstopmode processkv.ins
    luatex --interaction=nonstopmode zahl2string.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/sauerj/collect.pdf'] = 'collect.pdf',
      ['../doc/latex/sauerj/metainfo.pdf'] = 'metainfo.pdf',
      ['../doc/latex/sauerj/optparams.pdf'] = 'optparams.pdf',
      ['../doc/latex/sauerj/parcolumns.pdf'] = 'parcolumns.pdf',
      ['../doc/latex/sauerj/processkv.pdf'] = 'processkv.pdf',
      ['../doc/latex/sauerj/zahl2string.pdf'] = 'zahl2string.pdf',
      ['../tex/latex/sauerj/collect.sty'] = 'collect.sty',
      ['../tex/latex/sauerj/metainfo.sty'] = 'metainfo.sty',
      ['../tex/latex/sauerj/optparams.sty'] = 'optparams.sty',
      ['../tex/latex/sauerj/parcolumns.sty'] = 'parcolumns.sty',
      ['../tex/latex/sauerj/processkv.sty'] = 'processkv.sty',
      ['../tex/latex/sauerj/zahl2string.sty'] = 'zahl2string.sty',
    }
  }
}
