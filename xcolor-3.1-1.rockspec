local git_ref = 'v3.01'
local _git_ref = git_ref:gsub('v', '')
local modrev = _git_ref:gsub('0+(%d)', '%1')
local specrev = '1'

local repo_url = 'https://github.com/latex3/xcolor'

rockspec_format = '3.0'
package = 'xcolor'
version = modrev .. '-' .. specrev

description = {
  summary = 'Driver-independent color extensions for LaTeX and pdfLaTeX',
  detailed =
  [[The package starts from the basic facilities of the color package, and provides easy driver-independent access to several kinds of color tints, shades, tones, and mixes of arbitrary colors. It allows a user to select a document-wide target color model and offers complete tools for conversion between eight color models. Additionally, there is a command for alternating row colors plus repeated non-aligned material (like horizontal lines) in tables. Colors can be mixed like \color{red!30!green!40!blue}.]],
  labels = { 'Colour' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. _git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/xcolor.zip',
    dir = 'xcolor'
  }
end

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'pdfcolmk', 'colortbl' }

build = {
  type = 'l3build',
}
