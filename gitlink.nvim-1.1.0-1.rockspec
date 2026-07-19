local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/gitlink.nvim'

rockspec_format = '3.0'
package = 'gitlink.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Goto/Copy File\'s Online Link',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/gitlink.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitlink.nvim-' .. '1.1.0',
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
