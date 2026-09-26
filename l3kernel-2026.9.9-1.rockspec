local git_ref = '2026-09-09'
local modrev = git_ref:gsub('-0', '-'):gsub('-', '.')
local specrev = '1'

local repo_url = 'https://github.com/latex3/latex3'

rockspec_format = '3.0'
package = 'l3kernel'
version = modrev .. '-' .. specrev

description = {
  summary = 'LaTeX3 programming conventions',
  detailed =
  [[The l3kernel bundle provides an implementation of the LaTeX3 programmers’ interface, as a set of packages that run under LaTeX2ε. The interface provides the foundation on which the LaTeX3 kernel and other future code are built: it is an API for TeX programmers. The packages are set up so that the LaTeX3 conventions can be used with regular LaTeX2ε packages.]],
  labels = { 'Format', 'LaTeX3' },
  homepage = 'https://ctan.org/pkg/l3kernel',
  license = 'LPPL-1.3c'
}

dependencies = { 'unicode-data' }

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
  type = 'tds',
  copy_directories = { 'doc', 'tex' },
}
