local git_ref = 'b5c484ce2bcd0943188fa387c3f08d74002f4de3'
local modrev = '1.0.5'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/project.nvim'

rockspec_format = '3.0'
package = 'project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to detect and chdir to the project root, with its own UI. Iincludes pickers for telescope.nvim, snacks.nvim, fzf-lua and picker.nvim.',
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
  dir = 'project.nvim-' .. 'b5c484ce2bcd0943188fa387c3f08d74002f4de3',
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
