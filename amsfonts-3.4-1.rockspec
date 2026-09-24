local git_ref = '3.04'
local modrev = git_ref:gsub('0+(%d)', '%1')
local specrev = '1'

rockspec_format = '3.0'
package = 'amsfonts'
version = modrev .. '-' .. specrev

description = {
  summary = 'TeX fonts from the American Mathematical Society',
  detailed =
  [[An extended set of fonts for use in mathematics, including: extra mathematical symbols; blackboard bold letters (uppercase only); fraktur letters; subscript sizes of bold math italic and bold Greek letters; subscript sizes of large symbols such as sum and product; added sizes of the Computer Modern small caps font; cyrillic fonts (from the University of Washington); Euler mathematical fonts. All fonts are provided as Adobe Type 1 files, and all except the Euler fonts are provided as METAFONT source.

The distribution also includes the canonical Type 1 versions of the Computer Modern family of fonts.

Basic LaTeX support for the symbol fonts is provided by amsfonts.sty, with names of individual symbols defined in amssymb.sty. The Euler fonts are supported by separate packages; details can be found in the documentation.]],
  labels = { 'BBD Font', 'Maths Font', 'MF Font', 'Font Type1', 'Font', 'Font symbol maths' },
  homepage = 'http://www.ams.org/arc/resources/amsfonts-about.html',
  license = 'SIL'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/amsfonts.tds.zip",
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = "https://mirrors.ctan.org/install/fonts/amsfonts.tds.zip",
    dir = '.'
  }
end

build = {
  type = 'command',
  copy_directories = { 'tex', 'fonts', 'doc' },
}
