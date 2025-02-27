local git_ref = '0.4.0'
local modrev = '0.4.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-orgmode/orgmode'

rockspec_format = '3.0'
package = 'orgmode'
version = modrev ..'-'.. specrev

description = {
  summary = 'Orgmode clone written in Lua for Neovim 0.10.0+.',
  detailed = '',
  labels = { 'neovim', 'neovim-lua', 'neovim-plugin', 'nvim-cmp', 'org-mode', 'orgmode', 'orgmode-nvim', 'vim' } ,
  homepage = 'https://nvim-orgmode.github.io',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-orgmode ~> 1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'orgmode-' .. '0.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'indent', 'parser', 'plugin', 'queries', 'syntax' } ,
}
