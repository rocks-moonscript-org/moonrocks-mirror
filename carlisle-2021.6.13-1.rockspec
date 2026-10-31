local git_ref = 'ff9cf95d4da87aaa9e34e1577361eeb6d47396d6'
local modrev = '2021.6.13'
local specrev = '1'

local repo_url = 'https://github.com/davidcarlisle/dpctex'

rockspec_format = '3.0'
package = 'carlisle'
version = modrev .. '-' .. specrev

description = {
  summary = 'David Carlisle’s small packages',
  detailed =
  [[Many of David Carlisle’s more substantial packages stand on their own, or as part of the LaTeX latex-tools set; this set contains:

    Making dotless "j" characters for fonts that don’t have them;
    A method for combining the capabilities of longtable and tabularx;
    An environment for including Plain TeX in LaTeX documents;
    A jiffy to remove counters from other counters’ reset lists (now obsolete as it has been incorporated into the LaTeX format);
    A jiffy to create "slashed" characters for physicists.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dpctex-' .. git_ref .. '/' .. package,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/carlisle.zip',
    dir = 'carlisle'
  }
end

dependencies = { 'latex-graphics' }

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/carlisle/dotlessj.sty'] = 'dotlessj.sty',
      ['../tex/latex/carlisle/plain.sty'] = 'plain.sty',
      ['../tex/latex/carlisle/remreset.sty'] = 'remreset.sty',
      ['../tex/latex/carlisle/scalefnt.sty'] = 'scalefnt.sty',
      ['../tex/latex/carlisle/slashed.sty'] = 'slashed.sty',
    }
  }
}
