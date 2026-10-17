local git_ref = 'v0.1.2'
local modrev = '0.1.2'
local specrev = '1'

local repo_url = 'https://github.com/XavierBeheydt/mdrun.nvim'

rockspec_format = '3.0'
package = 'mdrun.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin (Lua) to run the commands in fenced code blocks of Markdown files.',
  detailed = '',
  labels = { 'code-blocks', 'code-runner', 'executable-markdown', 'lua', 'lua-plugin', 'markdown', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'runbook', 'shell' } ,
  homepage = 'https://github.com/XavierBeheydt/mdrun.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mdrun.nvim-' .. '0.1.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
