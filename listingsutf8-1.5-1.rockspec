local git_ref = 'release-2019-12-10'
local modrev = "1.5"
local specrev = '1'

local repo_url = 'https://github.com/LaTeX-Package-Repositories/listingsutf8'

rockspec_format = '3.0'
package = 'listingsutf8'
version = modrev .. '-' .. specrev

description = {
  summary = [[Allow UTF-8 in listings input]],
  detailed =
  [[Package listings does not support files with multi-byte encodings such as UTF-8. In the case of \lstinputlisting, a simple workaround is possible if a one-byte encoding exists that the file can be converted to. The package requires the ε-TeX extensions under pdfTeX (in either PDF or DVI output mode).]],
  labels = { 'Syntax highlight', 'Listing', 'UTF8 adaption' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'listings', 'latex-base', 'pdftexcmds', 'stringenc' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/listingsutf8.zip',
    dir = 'listingsutf8'
  }
end

build = {
  type = 'l3build',
}
