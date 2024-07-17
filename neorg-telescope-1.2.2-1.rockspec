local git_ref = 'v1.2.2'
local modrev = '1.2.2'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/neorg-telescope'

rockspec_format = '3.0'
package = 'neorg-telescope'
version = modrev ..'-'.. specrev

description = {
  summary = 'Telescope.nvim integration for Neorg',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/nvim-neorg/neorg-telescope',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'neorg', 'telescope.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-telescope-' .. '1.2.2',
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
