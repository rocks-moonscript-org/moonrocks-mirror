local git_ref = 'v6.10.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '2'

rockspec_format = '3.0'
package = 'tcolorbox'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/T-F-S/tcolorbox'

dependencies = {
  'pgf', 'latex-tools', 'latex-environ', 'etoolbox',
  'iftex', 'l3packages', 'listingsutf8', 'latex-base', 'refcount',
  'marginnote', 'incgraph', 'latex-amsmath', 'pdfcol', 'listings', 'tikzfill',
  -- 'minted',
}

description = {
  summary = 'Coloured boxes, for LaTeX examples and theorems, etc.',
  detailed =
  [[This package provides an environment for coloured and framed text boxes with a heading line. Optionally, such a box may be split in an upper and a lower part; thus the package may be used for the setting of LaTeX examples where one part of the box displays the source code and the other part shows the output. Another common use case is the setting of theorems. The package supports saving and reuse of source code and text parts.]],
  labels = { 'Colour', 'Verbatim', 'Listing', 'Macro Demonstration', 'Boxing', 'Box breaking' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/tcolorbox.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
