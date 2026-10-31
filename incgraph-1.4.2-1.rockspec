local git_ref = 'v1.4.2'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'incgraph'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/T-F-S/incgraph'

dependencies = { 'pgf', 'latex-graphics', 'bookmark' }

description = {
  summary = 'Sophisticated graphics inclusion in a PDF document',
  detailed =
  [[The package provides tools for including graphics at the full size of the output medium, or for creating "pages" whose size is that of the graphic they contain. A principal use case is documents that require inclusion of (potentially many) scans or photographs. Bookmarking is especially supported.

The tool box has basic macros and a "convenience" user interface that wraps \includegraphics.]],
  labels = { 'Graphics include' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/incgraph.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  install = {
    conf = {
      ['../tex/latex/incgraph/incgraph.sty'] = 'incgraph.sty',
      ['../doc/latex/incgraph/incgraph.pdf'] = 'incgraph.pdf',
    }
  }
}
