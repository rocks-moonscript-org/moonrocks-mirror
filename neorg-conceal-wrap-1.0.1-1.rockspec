local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/neorg-conceal-wrap'

rockspec_format = '3.0'
package = 'neorg-conceal-wrap'
version = modrev ..'-'.. specrev

description = {
  summary = 'Wrap lines based on their concealed width',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/benlubas/neorg-conceal-wrap',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neorg' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-conceal-wrap-' .. '1.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
