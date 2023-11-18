local git_ref = '1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/polarmutex/git-worktree.nvim'

rockspec_format = '3.0'
package = 'git-worktree.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/polarmutex/git-worktree.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git-worktree.nvim-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
