local git_ref = 'v0.1.2'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/barrettruth/http-codes.nvim'

rockspec_format = '3.0'
package = 'http-codes.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'HTTP status code viewer for neovim',
  detailed = '',
  labels = { 'fzf-lua', 'neovim', 'neovim-plugin', 'telescope-extension' } ,
  homepage = 'https://github.com/barrettruth/http-codes.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'http-codes.nvim-' .. '0.1.2',
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
