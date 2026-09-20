local git_ref = 'release-2026-06-01'
local modrev = git_ref:gsub("^release%-", ""):gsub('-0', '-'):gsub('%-', '.')
local specrev = "1"

local repo_url = 'https://github.com/latex3/latex2e'

rockspec_format = '3.0'
package = 'latex-cyrillic'
version = modrev .. '-' .. specrev

description = {
  summary = 'Support for Cyrillic fonts in LaTeX',
  detailed =
  [[This bundle of macros files provides macro support (including font encoding macros) for the use of Cyrillic characters in fonts encoded under the T2* and X2 encodings. These encodings cover (between them) pretty much every language that is written in a Cyrillic alphabet.

This directory is part of the LaTeX “required” distribution.]],
  labels = { 'Cyrillic' },
  homepage = 'https://ctan.org/pkg/latex-cyrillic',
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

-- \RequirePackage{fontenc}
dependencies = { 'latex-base' }

build = {
  type = 'none',
  copy_directories = { 'tex', 'doc' },
}
