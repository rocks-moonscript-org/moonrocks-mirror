local git_ref = 'v1.2'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/MartinScharrer/ifoddpage/'

rockspec_format = '3.0'
package = 'ifoddpage'
version = modrev .. '-' .. specrev

description = {
  summary = 'Determine if the current page is odd or even',
  detailed =
  [[The package provides an \ifoddpage conditional to determine if the current page is odd or even. The macro \checkoddpage must be used direct before to check the page number using a label. Two compiler runs are therefore required to achieve correct results. In addition, the conditional \ifoddpageoronside is provided which is also true in oneside mode where all pages use the odd page layout.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3'
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
