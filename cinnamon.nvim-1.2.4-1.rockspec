local git_ref = 'v1.2.4'
local modrev = '1.2.4'
local specrev = '1'

local repo_url = 'https://github.com/declancm/cinnamon.nvim'

rockspec_format = '3.0'
package = 'cinnamon.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Smooth scrolling for ANY command 🤯. A Neovim plugin written in Lua!',
  detailed = '',
  labels = { 'lua', 'neovim', 'nvim', 'plugin', 'scroll', 'vim' } ,
  homepage = 'https://github.com/declancm/cinnamon.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cinnamon.nvim-' .. '1.2.4',
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
