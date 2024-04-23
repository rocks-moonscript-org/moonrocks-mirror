local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/HiPhish/rainbow-delimiters.nvim'

rockspec_format = '3.0'
package = 'rainbow-delimiters.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Rainbow delimiters for Neovim with Tree-sitter',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/HiPhish/rainbow-delimiters.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rainbow-delimiters.nvim-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin', 'queries' } ,
}
