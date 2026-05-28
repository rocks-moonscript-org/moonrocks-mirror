local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/suderio/autolang.nvim'

rockspec_format = '3.0'
package = 'autolang.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin with a very simple language detector ',
  detailed = '',
  labels = { 'language-detection', 'lua', 'neovim', 'neovim-plugin', 'nvim-plugin', 'spellcheck', 'treesitter', 'writing' } ,
  homepage = 'https://github.com/suderio/autolang.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'autolang.nvim-' .. '0.2.0',
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
