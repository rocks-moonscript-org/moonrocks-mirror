local git_ref = 'v0.8'
local modrev = git_ref:gsub('v', '')
local specrev = '2'

local repo_url = 'https://github.com/MartinScharrer/filehook'

rockspec_format = '3.0'
package = 'filehook'
version = modrev .. '-' .. specrev

dependencies = { 'adjustbox', 'svn-prov' }

description = {
  summary = [[Hooks for input files]],
  detailed =
  [[The package provides several file hooks (AtBegin, AtEnd, …) for files read by \input, \include and \InputIfFileExists. General hooks for all such files (e.g. all \included ones) and file specific hooks only used for named files are provided; two hooks are provided for the end of \included files — one before, and one after the final \clearpage.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. version.char(specrev + 0x60) .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/filehook.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'tex' },
}
