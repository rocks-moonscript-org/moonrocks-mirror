local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/garymjr/nvim-snippets'

rockspec_format = '3.0'
package = 'nvim-snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Snippet support using native neovim snippets',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/garymjr/nvim-snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-snippets-' .. '1.0.0',
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
