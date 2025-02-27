local git_ref = '8f5276d708b08a500a0c4a65131688d2b6f9bb73'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/neo451/treedoc.nvim'

rockspec_format = '3.0'
package = 'treedoc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'experimental pandoc-style markup converter in neovim, powered by tree-sitter',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/neo451/treedoc.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'treedoc.nvim-' .. '8f5276d708b08a500a0c4a65131688d2b6f9bb73',
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
