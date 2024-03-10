local git_ref = 'v3.0.1'
local modrev = '3.0.1'
local specrev = '1'

local repo_url = 'https://github.com/rose-pine/neovim'

rockspec_format = '3.0'
package = 'rose-pine'
version = modrev ..'-'.. specrev

description = {
  summary = 'Soho vibes for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rose-pine/neovim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-' .. '3.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
