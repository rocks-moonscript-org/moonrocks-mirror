local git_ref = '81a9c9cee9c9e3b280fe2a284b2b4c22042b107b'
local modrev = '3.0.1'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/project.nvim'

rockspec_format = '3.0'
package = 'project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to detect and chdir to the project root, with its own UI. Provides lualine component, supports oil.nvim, includes pickers for telescope, snacks, fzf-lua, and picker.nvim.',
  detailed = [[
A Neovim plugin written in Lua that, under configurable conditions, automatically sets
the user's cwd to the current project root and provides project management.]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/project.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'project.nvim-' .. '81a9c9cee9c9e3b280fe2a284b2b4c22042b107b',
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
