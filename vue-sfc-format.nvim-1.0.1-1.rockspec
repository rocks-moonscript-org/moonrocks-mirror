local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/matiyas/vue-sfc-format.nvim'

rockspec_format = '3.0'
package = 'vue-sfc-format.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Format Vue SFC files with configurable formatters for each section',
  detailed = '',
  labels = { 'neovim', 'vue', 'formatter', 'sfc' } ,
  homepage = 'https://github.com/matiyas/vue-sfc-format.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vue-sfc-format.nvim-' .. '1.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'lua', 'plugin', 'doc' } ,
}
