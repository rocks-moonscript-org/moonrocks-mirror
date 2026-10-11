local git_ref = 'v1.6'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

local repo_url = 'https://github.com/norbusan/yhmath'

rockspec_format = '3.0'
package = 'yhmath'
version = modrev .. '-' .. specrev

description = {
  summary = 'Create tabular cells spanning multiple rows',
  detailed =
  [[The package has a lot of flexibility, including an option for specifying an entry at the "natural" width of its text.

The package is distributed with the bigdelim and bigstrut packages, which can be used to advantage with \yhmath cells.]],
  labels = { 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/yhmath.zip',
    dir = 'yhmath'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'latex-amsmath' }

build = {
  type = 'command',
  build_command = [[
      luatex --interaction=nonstopmode yhmath.ins
  ]],
  install = {
    conf = {
      ['../doc/fonts/yhmath/yhmath.pdf'] = 'yhmath.pdf',
      ['../tex/latex/yhmath/yhmath.sty'] = 'yhmath.sty',
      ['../tex/latex/yhmath/OMXyhex.fd'] = 'OMXyhex.fd',
      ['../tex/latex/yhmath/yhcmex10.cmap'] = 'yhcmex10.cmap',
      ['../fonts/map/dvips/yhmath/yhmath.map'] = 'yhmath.map',
      ['../fonts/type1/public/yhmath/yhcmex.pfb'] = 'yhcmex.pfb',
      ['../fonts/vf/public/yhmath/yhcmex10.vf'] = 'yhcmex10.vf',
      ['../fonts/tfm/public/yhmath/yhcmex10.tfm'] = 'yhcmex10.tfm',
      ['../fonts/tfm/public/yhmath/yrcmex10.tfm'] = 'yrcmex10.tfm',
    }
  }
}
