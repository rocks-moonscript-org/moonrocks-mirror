local git_tag = '0.1.4'
local modrev = '0.1.4'
local specrev = '-1'

local repo_url = 'https://github.com/nvim-telescope/telescope.nvim'

rockspec_format = '3.0'
package = 'telescope.nvim'
version = modrev .. specrev

description = {
  summary = 'Find, Filter, Preview, Pick. All lua, all the time.',
  detailed = [[
    A highly extendable fuzzy finder over lists. 
    Built on the latest awesome features from neovim core. 
    Telescope is centered around modularity, allowing for easy customization.  
]],
  labels = { 'hacktoberfest', 'lua', 'neovim', 'nvim', 'nvim-lua' } ,
  homepage = 'https://github.com/nvim-telescope/telescope.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

source = {
  url = repo_url .. '/archive/' .. git_tag .. '.zip',
  dir = 'telescope.nvim-' .. modrev,
}

if modrev == 'scm' then
  source = {
    url = repo_url,
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
