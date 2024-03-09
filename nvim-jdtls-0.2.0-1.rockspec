local git_ref = '0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nvim-jdtls'

rockspec_format = '3.0'
package = 'nvim-jdtls'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extensions for the built-in LSP support in Neovim for eclipse.jdt.ls',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nvim-jdtls',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-jdtls-' .. '0.2.0',
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
