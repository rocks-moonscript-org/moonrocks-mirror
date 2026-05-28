local git_ref = 'v1.4.1'
local modrev = '1.4.1'
local specrev = '1'

local repo_url = 'https://github.com/MattHandzel/taskwarrior.nvim'

rockspec_format = '3.0'
package = 'taskwarrior.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Edit your Taskwarrior database like a Neovim buffer.',
  detailed = [[
taskwarrior.nvim is an oil.nvim-inspired editor for Taskwarrior.
Every vim motion, macro, and visual-mode operation becomes a task
management operation for free.]],
  labels = { 'neovim', 'taskwarrior', 'note-taking', 'productivity' } ,
  homepage = 'https://github.com/MattHandzel/taskwarrior.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'taskwarrior.nvim-' .. '1.4.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}
