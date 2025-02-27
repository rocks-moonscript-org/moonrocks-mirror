local git_ref = 'v2.1'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = ''

rockspec_format = '3.0'
package = 'etex'
version = modrev .. '-' .. specrev

description = {
  summary = 'An extended version of TeX, from the NTS project',
  detailed =
  [[An extended version of TeX (capable of running as if it were unmodified TeX). E-TeX has been specified by the LaTeX team as the base engine for LaTeX2ε. Thus, LaTeX programmers may assume e-TeX functionality, along with additional extensions.

The pdftex engine and others directly incorporate the e-TeX extensions. The etex program in most distributions is an incarnation of pdftex running in DVI mode.

The development source for e-TeX is the TeX Live source repository, although further extensions have taken place in the pdftex and other engine sources, keeping e-TeX stable.]],
  labels = { 'tex' },
  homepage = 'https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/1997/SUPPORT/E-TEX/ETEX.HTML',
  license = 'Knuth'
}

dependencies = { 'knuth-lib' }

source = {
  url = 'https://erised.las.iastate.edu/tex-archive/obsolete/systems/e-tex/' .. git_ref .. '/etex_lib.zip',
  dir = 'texmf'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/etex-pkg/etex.sty'] = 'etex/latex/misc/etex.sty',
      ['../tex/plain/etex/etex.src'] = 'etex/plain/base/etex.src',
      ['../tex/plain/etex/etexdefs.lib'] = 'etex/plain/base/etexdefs.lib',
      ['../tex/generic/config/language.def'] = 'etex/plain/config/language.def',
      ['../fonts/tfm/public/etex/xbmc10.tfm'] = 'fonts/tfm/public/etex/xbmc10.tfm',
    }
  }
}
