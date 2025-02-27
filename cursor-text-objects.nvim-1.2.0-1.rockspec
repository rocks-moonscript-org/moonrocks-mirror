local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/cursor-text-objects.nvim'

rockspec_format = '3.0'
package = 'cursor-text-objects.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use [ and ] to enhance all of your Neovim text-objects and text-operators!',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/ColinKennedy/cursor-text-objects.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cursor-text-objects.nvim-' .. '1.2.0',
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
