local git_ref = '2025-01-18'
local modrev = git_ref:gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/latex3'

rockspec_format = '3.0'
package = 'l3kernel'
version = modrev .. '-' .. specrev

description = {
  summary = 'LaTeX3 programming conventions',
  detailed =
  [[The l3kernel bundle provides an implementation of the LaTeX3 programmers’ interface, as a set of packages that run under LaTeX2ε. The interface provides the foundation on which the LaTeX3 kernel and other future code are built: it is an API for TeX programmers. The packages are set up so that the LaTeX3 conventions can be used with regular LaTeX2ε packages.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://ctan.org/pkg/l3kernel',
  license = 'LPPL-1.3c'
}

dependencies = { 'unicode-data' }

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' },
  modules = {
    expl3 = 'tex/latex/l3kernel/expl3.lua'
  },
  install = {
    conf = {
      ['../tex/latex/l3kernel/expl3-code.tex'] = 'tex/latex/l3kernel/expl3-code.tex',
      ['../tex/latex/l3kernel/expl3-generic.tex'] = 'tex/latex/l3kernel/expl3-generic.tex',
      ['../tex/latex/l3kernel/expl3.ltx'] = 'tex/latex/l3kernel/expl3.ltx',
      ['../tex/latex/l3kernel/expl3.sty'] = 'tex/latex/l3kernel/expl3.sty',
      ['../tex/latex/l3kernel/l3debug.def'] = 'tex/latex/l3kernel/l3debug.def',
      ['../tex/latex/l3kernel/l3doc.cls'] = 'tex/latex/l3kernel/l3doc.cls',
      ['../tex/latex/l3kernel/l3docstrip.tex'] = 'tex/latex/l3kernel/l3docstrip.tex',
      ['../tex/latex/l3kernel/l3str-enc-iso88591.def'] = 'tex/latex/l3kernel/l3str-enc-iso88591.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88592.def'] = 'tex/latex/l3kernel/l3str-enc-iso88592.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88593.def'] = 'tex/latex/l3kernel/l3str-enc-iso88593.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88594.def'] = 'tex/latex/l3kernel/l3str-enc-iso88594.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88595.def'] = 'tex/latex/l3kernel/l3str-enc-iso88595.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88596.def'] = 'tex/latex/l3kernel/l3str-enc-iso88596.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88597.def'] = 'tex/latex/l3kernel/l3str-enc-iso88597.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88598.def'] = 'tex/latex/l3kernel/l3str-enc-iso88598.def',
      ['../tex/latex/l3kernel/l3str-enc-iso88599.def'] = 'tex/latex/l3kernel/l3str-enc-iso88599.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885910.def'] = 'tex/latex/l3kernel/l3str-enc-iso885910.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885911.def'] = 'tex/latex/l3kernel/l3str-enc-iso885911.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885913.def'] = 'tex/latex/l3kernel/l3str-enc-iso885913.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885914.def'] = 'tex/latex/l3kernel/l3str-enc-iso885914.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885915.def'] = 'tex/latex/l3kernel/l3str-enc-iso885915.def',
      ['../tex/latex/l3kernel/l3str-enc-iso885916.def'] = 'tex/latex/l3kernel/l3str-enc-iso885916.def',
    }
  }
}
