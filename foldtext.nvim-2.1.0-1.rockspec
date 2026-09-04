local git_ref = 'v2.1.0'
local modrev = '2.1.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/foldtext.nvim'

rockspec_format = '3.0'
package = 'foldtext.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Dynamic & stylized foldtext for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/foldtext.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'foldtext.nvim-' .. '2.1.0',
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
