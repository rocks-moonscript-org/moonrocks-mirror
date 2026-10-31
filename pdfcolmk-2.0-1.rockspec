local git_ref = 'release-2019-11-24'
-- local modrev = git_ref:gsub("^release%-", ""):gsub('%-', '.')
local modrev = '2.0'
local specrev = '1'

local repo_url = 'https://github.com/ho-tex/pdfcolmk'

rockspec_format = '3.0'
package = 'pdfcolmk'
version = modrev .. '-' .. specrev

description = {
  summary = 'Improved colour support under pdfTeX (legacy stub)',
  detailed =
  [[The package used to provide macros that emulated the ‘colour stack’ functionality of dvips. The colour stack deals with colour manipulations when asynchronous events (like page-breaking) occur. At the time the package was written, pdfTeX did not (yet) have such a stack, though dvips had had one for a long time.

This package was an experimental solution to the problem, and worked best with pdfε-TeX.

For current releases of pdfTeX (later than version 1.40.0, released in 2007), this package is not needed, since “real” colour stacks are available. The present pdfcolmk is therefore just an empty stub that does nothing at all, just in case there are still documents that reference it.

The documented source of the original package is still available at the github repository.]],
  labels = { 'Obsolete', 'Colour' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/pdfcolmk.zip',
    dir = '.'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

build = {
  type = 'l3build',
}
