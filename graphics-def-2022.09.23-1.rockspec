local git_ref = '2022-09-23'
local modrev = git_ref:gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/graphics-def'

rockspec_format = '3.0'
package = 'graphics-def'
version = modrev .. '-' .. specrev

dependencies = { 'epstopdf' }

description = {
  summary = 'Colour and graphics option files',
  detailed =
  [[This bundle is a combined distribution consisting of dvips.def, pdftex.def, luatex.def, xetex.def, dvipdfmx.def, and dvisvgm.def driver option files for the LaTeX graphics and color packages.

  It is hoped that by combining their source repositories at https://github.com/latex3/graphics-def it will be easier to coordinate updates.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '-ctan.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/graphics-def.zip',
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/graphics-def/dvipdfmx.def'] = 'dvipdfmx.def',
      ['../tex/latex/graphics-def/dvips.def'] = 'dvips.def',
      ['../tex/latex/graphics-def/dvisvgm.def'] = 'dvisvgm.def',
      ['../tex/latex/graphics-def/luatex.def'] = 'luatex.def',
      ['../tex/latex/graphics-def/pdftex.def'] = 'pdftex.def',
      ['../tex/latex/graphics-def/xetex.def'] = 'xetex.def',
    }
  }
}
