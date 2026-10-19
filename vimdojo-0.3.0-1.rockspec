local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/navasvarela/vimdojo'

rockspec_format = '3.0'
package = 'vimdojo'
version = modrev ..'-'.. specrev

description = {
  summary = 'Learn Vim motions by solving tiny puzzles in Neovim',
  detailed = [[
A game that teaches Vim motions: each level gives you a snippet of
text and a goal, and scores your solution on keystrokes, time and par.]],
  labels = { 'neovim', 'vim', 'game', 'learning' } ,
  homepage = 'https://github.com/navasvarela/vimdojo',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vimdojo-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'challenges' } ,
}
