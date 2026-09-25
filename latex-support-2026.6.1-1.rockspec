local git_ref = 'release-2026-06-01'
local modrev = git_ref:gsub("^release%-", ""):gsub('-0', '-'):gsub('%-', '.')
local specrev = "1"

local repo_url = 'https://github.com/latex3/latex2e'

rockspec_format = '3.0'
package = 'latex-support'
version = modrev .. '-' .. specrev

dependencies = {  }

description = {
  summary = 'Support sources of LaTeX',
  detailed =
  [[In order to support:
     \ExplSyntaxOn
       \file_get:nnN { glyphtounicode } { \ExplSyntaxOff }
         \@@data@glyphtounicode
       \file_get:nnN { glyphtounicode-cmex } { \ExplSyntaxOff }
         \@@data@glyphtounicode@cmex
     \ExplSyntaxOff
     \everyjob\expandafter{%
        \the\everyjob
        \@@data@glyphtounicode
        \@@data@glyphtounicode@cmex
      }
]],
  labels = { 'Class', 'Format' },
  homepage = 'https://ctan.org/pkg/latex-base',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'latex2e-' .. git_ref,
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
      ['../tex/generic/pdftex/glyphtounicode.tex'] = 'support/glyphtounicode.tex',
    }
  }
}
