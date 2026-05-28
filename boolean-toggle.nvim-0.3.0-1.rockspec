local git_ref = '41f2f56dc569429953f8d14cd49e6bafff8bafb7'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/boolean-toggle.nvim'

rockspec_format = '3.0'
package = 'boolean-toggle.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Toggle between boolean values under your cursor.',
  detailed = [[
Toggle between boolean values under your cursor.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DrKJeff16/boolean-toggle.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'boolean-toggle.nvim-' .. '41f2f56dc569429953f8d14cd49e6bafff8bafb7',
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
