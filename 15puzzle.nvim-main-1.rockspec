local git_ref = 'cd092ecf8d1c4d264fd6dfee61c51e47ba21fe25'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/NStefan002/15puzzle.nvim'

rockspec_format = '3.0'
package = '15puzzle.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Classic 15 puzzle for Neovim.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/NStefan002/15puzzle.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = '15puzzle.nvim-' .. 'cd092ecf8d1c4d264fd6dfee61c51e47ba21fe25',
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
