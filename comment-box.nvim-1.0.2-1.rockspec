local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/LudoPinelli/comment-box.nvim'

rockspec_format = '3.0'
package = 'comment-box.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Clarify and beautify your comments and plain text files using boxes and lines.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/LudoPinelli/comment-box.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'comment-box.nvim-' .. '1.0.2',
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
