local git_ref = '2024-11-01'
local modrev = git_ref:gsub('-', '.')
local specrev = '2'

local repo_url = 'https://github.com/latex3/latex2e'

rockspec_format = '3.0'
package = 'latex-graphics'
version = modrev .. '-' .. specrev

description = {
  summary = 'The LaTeX standard graphics bundle',
  detailed =
  [[This is a collection of LaTeX packages for:

    producing colour
    including graphics (eg PostScript) files
    rotation and scaling of text

in LaTeX documents.

It comprises the packages color, graphics, graphicx, trig, epsfig, keyval, and lscape.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://ctan.org/pkg/latex-graphics',
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/release-' .. git_ref .. '-PL' .. specrev .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git+https')
  }
end

-- \RequirePackage{ifthen}
-- https://tex.stackexchange.com/questions/340099/cannot-add-picture-to-article-no-driver-specified/648751#648751
dependencies = { 'latex-base', 'graphics-cfg' }

build = {
  type = 'builtin',
  copy_directories = { 'tex', 'doc' },
}
