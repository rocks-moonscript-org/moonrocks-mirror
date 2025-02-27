local git_ref = '2025-01-18'
local modrev = git_ref:gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/latex3'

rockspec_format = '3.0'
package = 'l3packages'
version = modrev .. '-' .. specrev

description = {
  summary = [[High-level LaTeX3 concepts]],
  detailed =
  [[This collection deals with higher-level ideas such as the Designer Interface, as part of LaTeX3 developments. The packages here have over time migrated into the LaTeX kernel: the material here is retained to support older files.

The appropriate LaTeX kernel releases incorporating the ideas from the packages here are

    l3keys2e 2022-06-01
    xfp 2022-06-01
    xparse 2020-10-01
    xtemplate 2024-06-01]],
  labels = { 'tex', 'latex' },
  homepage = 'https://www.latex-project.org/',
  license = 'LPPL-1.3c'
}

dependencies = { 'l3kernel' }

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package
  .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/l3packages.tds.zip',
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'tex' }
}
