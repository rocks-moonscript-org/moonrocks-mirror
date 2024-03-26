local git_ref = 'v1.4.0'
local modrev = '1.4.0'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/15puzzle.nvim'

rockspec_format = '3.0'
package = '15puzzle.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Classic 15 puzzle for Neovim.',
  detailed = '',
  labels = { 'game', 'lua', 'neovim', 'neovim-plugin', 'plugin', 'puzzle-game' } ,
  homepage = 'https://github.com/NStefan002/15puzzle.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = '15puzzle.nvim-' .. '1.4.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
