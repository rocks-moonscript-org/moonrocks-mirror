local git_ref = '1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nluarepl'

rockspec_format = '3.0'
package = 'nluarepl'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim plugin that implements a debug adapter limited to evaluating expressions',
  detailed = '',
  labels = { 'debug-adapter-protocol', 'neovim', 'neovim-plugin', 'nvim-dap' } ,
  homepage = 'https://github.com/mfussenegger/nluarepl',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nluarepl-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
