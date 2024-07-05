local git_ref = 'v0.6.1'
local modrev = '0.6.1'
local specrev = '1'

local repo_url = 'https://github.com/jnpngshiii/mindmap.nvim'

rockspec_format = '3.0'
package = 'mindmap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'vim' } ,
  homepage = 'https://github.com/jnpngshiii/mindmap.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'logger.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mindmap.nvim-' .. '0.6.1',
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
