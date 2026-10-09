local git_ref = '1.86'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/xstring'

rockspec_format = '3.0'
package = 'xstring'
version = modrev .. '-' .. specrev

description = {
  summary = [[String manipulation for (La)TeX]],
  detailed =
  [[The package provides macros for manipulating strings – testing a string’s contents, extracting substrings, substitution of substrings and providing numbers such as string length, position of, or number of recurrences of, a substring.

The package works equally in Plain TeX and LaTeX (though ε-TeX is always required). The strings to be processed may contain (expandable) macros.]],
  labels = { 'String' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/xstring.zip",
  dir = 'xstring'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/required/xstring.zip',
    dir = 'xstring'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../doc/latex/xstring/xstring-fr.pdf'] = 'xstring-fr.pdf',
      ['../doc/latex/xstring/xstring-en.pdf'] = 'xstring-en.pdf',
      ['../tex/generic/xstring/xstring.tex'] = 'xstring.tex',
      ['../tex/latex/xstring/xstring.sty'] = 'xstring.sty',
    }
  }
}
