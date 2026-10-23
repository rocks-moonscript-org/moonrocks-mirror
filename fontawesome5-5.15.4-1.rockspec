local git_ref = '5.15.4'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/fontawesome5'

rockspec_format = '3.0'
package = 'fontawesome5'
version = modrev .. '-' .. specrev

description = {
  summary = [[Font Awesome 5 with LaTeX support]],
  detailed =
  [[This package provides LaTeX support for the included "Font Awesome 5 Free" icon set. These icons were designed by Fort Awesome and released under the SIL OFL 1.1 license. The commercial "Pro" version is also supported, if it is installed and XeLaTeX or LuaLaTeX is used.]],
  labels = { 'Font symbol', 'Font Type1', 'Font supp symbol', 'Font', 'OTF font' },
  homepage = repo_url,
  license = 'SIL'
}

dependencies = { 'luatexbase', 'l3kernel', 'l3packages' }

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/fontawesome5.zip",
  dir = 'fontawesome5'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/generic/fontawesome5.zip',
    dir = 'fontawesome5'
  }
end

build = {
  type = 'none',
  install = {
    lua = {
      fontawesome5 = 'tex/fontawesome5.lua',
    },
    conf = {
      -- doc
      ['../doc/fonts/fontawesome5/fontawesome5.pdf'] = 'doc/fontawesome5.pdf',
      ['../doc/fonts/fontawesome5/README.md'] = 'README.md',

      -- enc
      ['../fonts/enc/dvips/fontawesome5/fa5brands0.enc'] = 'enc/fa5brands0.enc',
      ['../fonts/enc/dvips/fontawesome5/fa5brands1.enc'] = 'enc/fa5brands1.enc',
      ['../fonts/enc/dvips/fontawesome5/fa5free0.enc'] = 'enc/fa5free0.enc',
      ['../fonts/enc/dvips/fontawesome5/fa5free1.enc'] = 'enc/fa5free1.enc',
      ['../fonts/enc/dvips/fontawesome5/fa5free2.enc'] = 'enc/fa5free2.enc',
      ['../fonts/enc/dvips/fontawesome5/fa5free3.enc'] = 'enc/fa5free3.enc',

      -- map
      ['../fonts/map/dvips/fontawesome5/fontawesome5.map'] = 'map/fontawesome5.map',

      -- opentype
      ['../fonts/opentype/public/fontawesome5/FontAwesome5Brands-Regular-400.otf'] =
      'opentype/FontAwesome5Brands-Regular-400.otf',
      ['../fonts/opentype/public/fontawesome5/FontAwesome5Free-Regular-400.otf'] =
      'opentype/FontAwesome5Free-Regular-400.otf',
      ['../fonts/opentype/public/fontawesome5/FontAwesome5Free-Solid-900.otf'] =
      'opentype/FontAwesome5Free-Solid-900.otf',

      -- tfm
      ['../fonts/tfm/public/fontawesome5/fa5brands0.tfm'] = 'tfm/fa5brands0.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5brands1.tfm'] = 'tfm/fa5brands1.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free0regular.tfm'] = 'tfm/fa5free0regular.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free0solid.tfm'] = 'tfm/fa5free0solid.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free1regular.tfm'] = 'tfm/fa5free1regular.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free1solid.tfm'] = 'tfm/fa5free1solid.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free2regular.tfm'] = 'tfm/fa5free2regular.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free2solid.tfm'] = 'tfm/fa5free2solid.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free3regular.tfm'] = 'tfm/fa5free3regular.tfm',
      ['../fonts/tfm/public/fontawesome5/fa5free3solid.tfm'] = 'tfm/fa5free3solid.tfm',

      -- type1
      ['../fonts/type1/public/fontawesome5/FontAwesome5Brands-Regular.pfb'] =
      'type1/FontAwesome5Brands-Regular.pfb',
      ['../fonts/type1/public/fontawesome5/FontAwesome5Free-Regular.pfb'] =
      'type1/FontAwesome5Free-Regular.pfb',
      ['../fonts/type1/public/fontawesome5/FontAwesome5Free-Solid.pfb'] =
      'type1/FontAwesome5Free-Solid.pfb',

      -- tex
      ['../tex/latex/fontawesome5/fontawesome5-generic-helper.sty'] = 'tex/fontawesome5-generic-helper.sty',
      ['../tex/latex/fontawesome5/fontawesome5-mapping.def'] = 'tex/fontawesome5-mapping.def',
      ['../tex/latex/fontawesome5/fontawesome5-utex-helper.sty'] = 'tex/fontawesome5-utex-helper.sty',
      ['../tex/latex/fontawesome5/fontawesome5.sty'] = 'tex/fontawesome5.sty',
      ['../tex/latex/fontawesome5/tufontawesomebrands.fd'] = 'tex/tufontawesomebrands.fd',
      ['../tex/latex/fontawesome5/tufontawesomefree.fd'] = 'tex/tufontawesomefree.fd',
      ['../tex/latex/fontawesome5/tufontawesomepro.fd'] = 'tex/tufontawesomepro.fd',
      ['../tex/latex/fontawesome5/ufontawesomebrands0.fd'] = 'tex/ufontawesomebrands0.fd',
      ['../tex/latex/fontawesome5/ufontawesomebrands1.fd'] = 'tex/ufontawesomebrands1.fd',
      ['../tex/latex/fontawesome5/ufontawesomefree0.fd'] = 'tex/ufontawesomefree0.fd',
      ['../tex/latex/fontawesome5/ufontawesomefree1.fd'] = 'tex/ufontawesomefree1.fd',
      ['../tex/latex/fontawesome5/ufontawesomefree2.fd'] = 'tex/ufontawesomefree2.fd',
      ['../tex/latex/fontawesome5/ufontawesomefree3.fd'] = 'tex/ufontawesomefree3.fd',
    }
  }
}
