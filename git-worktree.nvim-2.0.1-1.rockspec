local git_ref = '2.0.1'
local modrev = '2.0.1'
local specrev = '1'

local repo_url = 'https://github.com/polarmutex/git-worktree.nvim'

rockspec_format = '3.0'
package = 'git-worktree.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = [[
A plugin  that helps to use git worktree operations, create, switch, and delete in neovim.]],
  labels = { },
  homepage = 'https://github.com/polarmutex/git-worktree.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git-worktree.nvim-' .. '2.0.1',
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
