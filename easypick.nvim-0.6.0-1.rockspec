local git_ref = 'v0.6.0'
local modrev = '0.6.0'
local specrev = '1'

local repo_url = 'https://github.com/axkirillov/easypick.nvim'

rockspec_format = '3.0'
package = 'easypick.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin that lets you easily create Telescope pickers from arbitrary console commands',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/axkirillov/easypick.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'easypick.nvim-' .. '0.6.0',
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
