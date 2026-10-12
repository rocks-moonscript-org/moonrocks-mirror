local git_ref = '1998-04-24'
local modrev = git_ref:gsub('%-0', '-'):gsub('%-', '.')
local specrev = '1'

rockspec_format = '3.0'
package = 'rsfs'
version = modrev .. '-' .. specrev

description = {
  summary = [[Ralph Smith’s Formal Script font]],
  detailed =
  [[The fonts provide uppercase "formal" script letters for use as symbols in scientific and mathematical typesetting (in contrast to the informal script fonts such as that used for the "calligraphic" symbols in the TeX maths symbol font). The fonts are provided as METAFONT source, and as derived Adobe Type 1 format.

LaTeX support, for using these fonts in mathematics, is available via one of the packages calrsfs and mathrsfs.]],
  labels = { 'Calligraphic font', 'Font', 'Font Type1', 'MF font' },
  homepage = 'https://ctan.org/pkg/rsfs',
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/rsfs.zip",
  dir = 'rsfs',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/fonts/rsfs.zip',
    dir = 'rsfs',
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/plain/rsfs/scrload.tex'] = 'scrload.tex',
      ['../fonts/map/dvips/rsfs/rsfs.map'] = 'type1/map/rsfs.map',
      ['../fonts/type1/public/rsfs/rsfs5.pfb'] = 'type1/rsfs5.pfb',
      ['../fonts/type1/public/rsfs/rsfs7.pfb'] = 'type1/rsfs7.pfb',
      ['../fonts/type1/public/rsfs/rsfs10.pfb'] = 'type1/rsfs10.pfb',
      ['../fonts/type1/public/rsfs/rsfs5.pfm'] = 'type1/pfm/rsfs5.pfm',
      ['../fonts/type1/public/rsfs/rsfs7.pfm'] = 'type1/pfm/rsfs7.pfm',
      ['../fonts/type1/public/rsfs/rsfs10.pfm'] = 'type1/pfm/rsfs10.pfm',
      ['../fonts/tfm/public/rsfs/rsfs5.tfm'] = 'type1/tfm/rsfs5.tfm',
      ['../fonts/tfm/public/rsfs/rsfs7.tfm'] = 'type1/tfm/rsfs7.tfm',
      ['../fonts/tfm/public/rsfs/rsfs10.tfm'] = 'type1/tfm/rsfs10.tfm',
      ['../fonts/afm/public/rsfs/rsfs5.afm'] = 'type1/afm/rsfs5.afm',
      ['../fonts/afm/public/rsfs/rsfs7.afm'] = 'type1/afm/rsfs7.afm',
      ['../fonts/afm/public/rsfs/rsfs10.afm'] = 'type1/afm/rsfs10.afm',
    }
  }
}
