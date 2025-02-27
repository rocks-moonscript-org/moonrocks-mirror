local git_ref = 'v0.14.0'
local modrev = '0.14.0'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.base16'

rockspec_format = '3.0'
package = 'mini.base16'
version = modrev ..'-'.. specrev

description = {
  summary = 'Base16 colorscheme creation for Neovim Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.base16',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.base16-' .. '0.14.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
