local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/neorg-se'

rockspec_format = '3.0'
package = 'neorg-se'
version = modrev ..'-'.. specrev

description = {
  summary = 'a Search Engine for your Neorg notes',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/benlubas/neorg-se',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neorg' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-se-' .. '1.0.1',
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
