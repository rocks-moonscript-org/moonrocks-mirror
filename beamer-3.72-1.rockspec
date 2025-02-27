local git_ref = 'v3.72'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/josephwright/beamer/'

rockspec_format = '3.0'
package = 'beamer'
version = modrev .. '-' .. specrev

dependencies = { 'atbegshi', 'etoolbox', 'hyperref', 'iftex',
  'pgf', 'translator', 'latex-amsmath', 'latex-graphics',
  'latex-tools', 'geometry' }

description = {
  summary = 'A LaTeX class for producing presentations and slides',
  detailed =
  [[The beamer LaTeX class can be used for producing slides. The class works in both PostScript and direct PDF output modes, using the pgf graphics system for visual effects.

  Content is created in the frame environment, and each frame can be made up of a number of slides using a simple notation for specifying material to appear on each slide within a frame. Short versions of title, authors, institute can also be specified as optional parameters. Whole frame graphics are supported by plain frames. The class supports figure and table environments, transparency effects, varying slide transitions and animations. Beamer also provides compatibility with other packages like prosper.

  The package now incorporates the functionality of the former translator package, which is used for customising the package for use in other language environments.

  Beamer depends on the following other packages: atbegshi, etoolbox, hyperref, ifpdf, pgf, and translator.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

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
  type = 'none',
  copy_directories = { 'doc', 'tex' },
}
