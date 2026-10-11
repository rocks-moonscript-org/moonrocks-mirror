local git_ref = 'ffd9f3f0238449be9239a05904e72ab3475139e6'
local modrev = '2.9'
local specrev = '1'

local repo_url = 'https://github.com/pietvo/multirow'

rockspec_format = '3.0'
package = 'multirow'
version = modrev .. '-' .. specrev

description = {
  summary = 'Create tabular cells spanning multiple rows',
  detailed =
  [[The package has a lot of flexibility, including an option for specifying an entry at the "natural" width of its text.

The package is distributed with the bigdelim and bigstrut packages, which can be used to advantage with \multirow cells.]],
  labels = { 'Table' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/multirow.zip',
    dir = 'multirow'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/multirow/multirow.sty'] = 'multirow.sty',
      ['../tex/latex/multirow/bigstrut.sty'] = 'bigstrut.sty',
      ['../tex/latex/multirow/bigdelim.sty'] = 'bigdelim.sty',
    }
  }
}
