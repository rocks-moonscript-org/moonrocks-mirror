local git_ref = 'v0.8b'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('[^0-9.]', '')
local __git_ref = git_ref.format('%d', _git_ref:gsub('[0-9.]', ''):byte() - 0x60)
modrev = modrev .. '.' .. __git_ref
local specrev = '1'

local repo_url = 'https://github.com/MartinScharrer/filehook'

rockspec_format = '3.0'
package = 'filehook'
version = modrev .. '-' .. specrev

dependencies = { 'adjustbox', 'svn-prov' }

description = {
  summary = [[Hooks for input files]],
  detailed =
  [[The package provides several file hooks (AtBegin, AtEnd, …) for files read by \input, \include and \InputIfFileExists. General hooks for all such files (e.g. all \included ones) and file specific hooks only used for named files are provided; two hooks are provided for the end of \included files — one before, and one after the final \clearpage.]],
  labels = { 'Macro support' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '.tds.zip',
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
