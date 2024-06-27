local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/rmagatti/goto-preview'

rockspec_format = '3.0'
package = 'goto-preview'
version = modrev ..'-'.. specrev

description = {
  summary = 'A small Neovim plugin for previewing definitions using floating windows.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rmagatti/goto-preview',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'goto-preview-' .. '1.0.0',
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
