local git_ref = 'v1.6'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/MartinScharrer/newverbs'

rockspec_format = '3.0'
package = 'newverbs'
version = modrev .. '-' .. specrev

dependencies = { 'latex-base' }

description = {
  summary = 'Define new versions of \verb, including short verb versions',
  detailed =
  [[The package allows the definition of \verb variants which add TeX code before and after the verbatim text (e.g., quotes or surrounding \fbox{}). When used together with the shortvrb package it allows the definition of short verbatim characters which use this package’s variant instead of the normal \verb.

  In addition, it is possible to collect an argument verbatim to either typeset or write it into a file.

  The \Verbdef command defines verbatim text to a macro which can later be used to write the verbatim text to a file.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. version.char(specrev + 0x60) .. '/' .. package .. '.tds.zip',
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
