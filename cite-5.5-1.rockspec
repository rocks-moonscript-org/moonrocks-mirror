local git_ref = '5.5'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/cite-bundle'

rockspec_format = '3.0'
package = 'cite'
version = modrev .. '-' .. specrev

description = {
  summary = [[Citation management bundle]],
  detailed =
  [[A collection of packages related to managing citations:

    cite, which supports compressed, sorted lists of numerical citations, and also deals with various punctuation and other issues of representation;
    drftcite, which prints citation keys rather than numbers;
    overcite, which prints citation numbers in a superscript position; and
    chapterbib, which permits multiple bibliographies, one per \included file in a document.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/cite.zip",
  dir = 'cite'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/cite.zip',
    dir = 'cite'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../doc/latex/cite/cite.pdf'] = 'cite.pdf',
      ['../doc/latex/cite/chapterbib.pdf'] = 'chapterbib.pdf',
      ['../tex/latex/cite/cite.sty'] = 'cite.sty',
      ['../tex/latex/cite/drftcite.sty'] = 'drftcite.sty',
      ['../tex/latex/cite/overcite.sty'] = 'overcite.sty',
      ['../tex/latex/cite/chapterbib.sty'] = 'chapterbib.sty',
    }
  }
}
