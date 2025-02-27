local git_ref = 'v1.18'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/latex3/unicode-data'

rockspec_format = '3.0'
package = 'unicode-data'
version = modrev .. '-' .. specrev

description = {
  summary = 'Unicode case mapping and character class data for use by TeX',
  detailed =
  [[The Unicode Consortium provide a range of data files detailing the nature of code points in Unicode. These data files are machine-readable but large. Here, a set of loaders are provided to parse these files during a TeX run and set appropriate parameters in an automated fashion.]],
  labels = { 'tex' },
  homepage = 'https://ctan.org/pkg/unicode-data',
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
  type = 'builtin',
  copy_directories = { 'tex', 'doc' },
}
