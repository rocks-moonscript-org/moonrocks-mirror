local git_ref = 'release-2026-06-01'
local modrev = git_ref:gsub("^release%-", ""):gsub('-0', '-'):gsub('%-', '.')
local specrev = "1"

local repo_url = 'https://github.com/latex3/latex2e'

rockspec_format = '3.0'
package = 'latex-tools'
version = modrev .. '-' .. specrev

description = {
  summary = 'The LaTeX standard tools bundle',
  detailed =
  [[A collection of (variously) simple tools provided as part of the LaTeX required tools distribution, comprising the packages: afterpage, array, bm, calc, dcolumn, delarray, enumerate, fileerr, fontsmpl, ftnright, hhline, indentfirst, layout, longtable, multicol, rawfonts, shellesc, showkeys, somedefs, tabularx, theorem, trace, varioref, verbatim, xr, and xspace.]],
  labels = { 'Collection' },
  homepage = 'https://ctan.org/pkg/latex-tools',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.tds.zip',
  dir = '.'
}

dependencies = { 'latex-graphics' }

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

build = {
  type = 'none',
  copy_directories = { 'tex', 'doc' },
}
