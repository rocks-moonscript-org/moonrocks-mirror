local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/mimparat132/kube.nvim'

rockspec_format = '3.0'
package = 'kube.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for various kubernetes related  functions.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/mimparat132/kube.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kube.nvim-' .. '1.2.0',
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
