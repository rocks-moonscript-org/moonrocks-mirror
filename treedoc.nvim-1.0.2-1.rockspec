local git_ref = 'v1.0.2'
local modrev = '1.0.2'
local specrev = '1'

local repo_url = 'https://github.com/neo451/treedoc.nvim'

rockspec_format = '3.0'
package = 'treedoc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'pandoc-style markup converter in neovim, powered by tree-sitter',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/neo451/treedoc.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'treedoc.nvim-' .. '1.0.2',
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
