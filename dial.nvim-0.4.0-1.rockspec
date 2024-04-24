local git_ref = 'v0.4.0'
local modrev = '0.4.0'
local specrev = '1'

local repo_url = 'https://github.com/monaqa/dial.nvim'

rockspec_format = '3.0'
package = 'dial.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'enhanced increment/decrement plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/monaqa/dial.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dial.nvim-' .. '0.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
