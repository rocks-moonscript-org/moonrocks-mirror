local git_ref = 'v3.2.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'sjtubeamer'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/sjtug/SJTUBeamer'

description = {
  summary = 'Beamer template for Shanghai Jiao Tong University',
  labels = { 'beamer', 'beamer-template', 'latex', 'latex-template', 'latex-template-beamer', 'sjtu', 'tex', 'xelatex' },
  homepage = repo_url,
  license = 'Apache-2.0'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'SJTUBeamer-' .. modrev .. '/src',
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'beamer', 'pgf', 'latex-tools', 'tcolorbox', 'colortbl', 'booktabs', 'silence' }

build = {
  type = 'l3build',
}

