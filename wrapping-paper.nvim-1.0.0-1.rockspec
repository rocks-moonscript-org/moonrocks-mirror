local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/wrapping-paper.nvim'

rockspec_format = '3.0'
package = 'wrapping-paper.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple plugin which simulates wrapping a single line at a time using floating windows and virtual text trickery',
  detailed = '',
  labels = { 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/benlubas/wrapping-paper.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wrapping-paper.nvim-' .. '1.0.0',
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
