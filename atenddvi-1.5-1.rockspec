local git_ref = 'v1.5'
local modrev = git_ref:gsub("^v", "")
local specrev = '1'

rockspec_format = '3.0'
package = 'atenddvi'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/LaTeX-Package-Repositories/atenddvi'

description = {
  summary = [[Provides the \AtEndDvi command]],
  detailed =
  [[This package is unneeded and does nothing when used with a LaTeX format 2020-10-01 or newer as in this case the format provides the \AtEndDvi command.

For older formats it implements \AtEndDvi, a counterpart to \AtBeginDvi. The execution of its argument is delayed to the end of the document at the end of the last page. Thus \special and \write remain effective, because they are put into the last page. This is the main difference to \AtEndDocument.]],
  labels = { 'Defer stuff' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'lualatex', 'latex-base' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/atenddvi.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
