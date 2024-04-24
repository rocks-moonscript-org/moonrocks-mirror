local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/gpanders/nvim-parinfer'

rockspec_format = '3.0'
package = 'nvim-parinfer'
version = modrev ..'-'.. specrev

description = {
  summary = 'Parinfer for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/gpanders/nvim-parinfer',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-parinfer-' .. '1.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
