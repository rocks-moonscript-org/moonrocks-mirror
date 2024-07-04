local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/jnpngshiii/logger.nvim'

rockspec_format = '3.0'
package = 'logger.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/jnpngshiii/logger.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'logger.nvim-' .. '0.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
