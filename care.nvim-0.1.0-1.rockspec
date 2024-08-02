local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/max397574/care.nvim'

rockspec_format = '3.0'
package = 'care.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'care.nvim - Completion And Recommendation Engine for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/max397574/care.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'fzy' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'care.nvim-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
