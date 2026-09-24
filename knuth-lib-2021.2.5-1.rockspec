local git_ref = '2021-02-05'
local modrev = git_ref:gsub('-0', '-'):gsub('-', '.')
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/knuth-lib'

rockspec_format = '3.0'
package = 'knuth-lib'
version = modrev .. '-' .. specrev

dependencies = { 'cm-tfm', 'manual' }

description = {
  summary = 'Core TeX and METAFONT sources from Knuth',
  detailed =
  [[A collection of core TeX and METAFONT macro files from DEK, apart from the plain format and base. Includes the MF logo font(s), webmac.tex, etc]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'Knuth'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/lib.zip",
  dir = 'lib'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/systems/knuth/dist/lib.zip',
    dir = 'lib'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/plain/knuth-lib/manmac.tex'] = 'manmac.tex',
      ['../tex/plain/knuth-lib/mftmac.tex'] = 'mftmac.tex',
      ['../tex/plain/knuth-lib/story.tex'] = 'story.tex',
      ['../tex/plain/knuth-lib/testfont.tex'] = 'testfont.tex',
      ['../tex/plain/knuth-lib/webmac.tex'] = 'webmac.tex',
      ['../tex/generic/knuth-lib/null.tex'] = 'null.tex',
      ['../tex/generic/hyphen/hyphen.tex'] = 'hyphen.tex',
      ['../tex/plain/base/plain.tex'] = 'plain.tex',
    }
  }
}
