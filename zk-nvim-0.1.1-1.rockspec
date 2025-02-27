local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/zk-org/zk-nvim'

rockspec_format = '3.0'
package = 'zk-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim extension for zk',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/zk-org/zk-nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zk-nvim-' .. '0.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
