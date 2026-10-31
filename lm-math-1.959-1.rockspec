local git_ref = '1.959'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'lm-math'
version = modrev .. '-' .. specrev

description = {
  summary = [[OpenType maths fonts for Latin Modern]],
  detailed =
  [[Latin Modern Math is a maths companion for the Latin Modern family of fonts, in OpenType format.

For use with LuaLaTeX or XeLaTeX, support is available from the unicode-math package.]],
  labels = { 'Maths font', 'Font', 'OTF font' },
  homepage = 'https://www.gust.org.pl/projects/e-foundry/latin-modern',
  license = 'GFL'
}

source = {
  url = "https://www.gust.org.pl/projects/e-foundry/lm-math/download/latinmodern-math-1959.zip",
  dir = 'latinmodern-math-1959',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/fonts/lm.zip',
    dir = 'lm',
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../fonts/opentype/public/lm-math/latinmodern-math.otf'] = 'otf/latinmodern-math.otf',
    }
  }
}
