local git_ref = 'b091ca54212223aed213d716ec47a6fdc56500ce'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/guard.nvim'

rockspec_format = '3.0'
package = 'guard.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'async fast minimalist plugin make format easy in neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/nvimdev/guard.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guard.nvim-' .. 'b091ca54212223aed213d716ec47a6fdc56500ce',
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
