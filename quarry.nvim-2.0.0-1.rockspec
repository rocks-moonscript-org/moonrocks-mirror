local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/rudionrails/quarry.nvim'

rockspec_format = '3.0'
package = 'quarry.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to simplify masion, mason-lspconfig and lspconfig configuration.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/rudionrails/quarry.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'quarry.nvim-' .. '2.0.0',
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
