local git_ref = '0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-orgmode/orgmode'

rockspec_format = '3.0'
package = 'nvim-orgmode'
version = modrev ..'-'.. specrev

description = {
  summary = 'Orgmode clone written in Lua for Neovim 0.9+.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-orgmode/orgmode',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'orgmode-' .. '0.2.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'indent', 'plugin', 'queries', 'syntax' } ,
}
