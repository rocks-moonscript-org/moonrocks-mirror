local git_ref = '2024/06/19'
local modrev = git_ref:gsub('/0', '/'):gsub('/', '.')
local specrev = "1"

local repo_url = 'https://github.com/davidcarlisle/graphics-pln'

rockspec_format = '3.0'
package = 'graphics-pln'
version = modrev .. '-' .. specrev

description = {
  summary = 'LaTeX-style graphics for Plain TeX users',
  detailed =
  [[The Plain TeX graphics package is mostly a thin shell around the LaTeX graphicx and color packages, with support of the LaTeX-isms in those packages provided by miniltx (which is the largest part of the bundle).

The bundle also contains a file picture.tex, which is a wrapper around the autopict.sty, and provides the LaTeX picture mode to Plain TeX users.]],
  labels = { 'Plain extensions', '	Graphics include' },
  homepage = repo_url,
  license = 'LPPL-1'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref:gsub('/', '-'),
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'none',
  build = {
    install = {
      conf = {
        ['../tex/generic/graphics-pln/autopict.sty'] = 'autopict.sty',
        ['../tex/plain/graphics-pln/color.tex'] = 'color.tex',
        ['../tex/plain/graphics-pln/graphicx.tex'] = 'graphicx.tex',
        ['../tex/plain/graphics-pln/miniltx.tex'] = 'miniltx.tex',
        ['../tex/plain/graphics-pln/picture.tex'] = 'picture.tex',
        ['../tex/plain/graphics-pln/psfrag.tex'] = 'psfrag.tex',
      }
    }
  }
}
