local git_ref = 'v1.0.3'
local modrev = '1.0.3'
local specrev = '1'

local repo_url = 'https://github.com/pakut2/wmc.nvim'

rockspec_format = '3.0'
package = 'wmc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Edit with STYLE in Neovim',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/pakut2/wmc.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wmc.nvim-' .. '1.0.3',
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
