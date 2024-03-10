local git_ref = 'v1.0'
local modrev = '1.0'
local specrev = '1'

local repo_url = 'https://github.com/ghillb/cybu.nvim'

rockspec_format = '3.0'
package = 'cybu.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that offers context when cycling buffers in the form of a customizable notification window.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ghillb/cybu.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cybu.nvim-' .. '1.0',
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
