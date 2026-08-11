local git_ref = 'db5c011205804f4ef5f0048cdbf6ebef5ce69b88'
local modrev = '6.0.1'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/project.nvim'

rockspec_format = '3.0'
package = 'project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Actively maintained fork of ahmedkhalf/project.nvim. Detects and chdirs to the project root, with its own UI, provides lualine component, supports oil.nvim, includes pickers for telescope, snacks, fzf-lua, and picker.nvim.',
  detailed = [[
A Neovim plugin written in Lua that, under configurable conditions, automatically sets
the user's cwd to the current project root and provides project management.]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/project.nvim',
  license = 'GPLv2'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'project.nvim-' .. 'db5c011205804f4ef5f0048cdbf6ebef5ce69b88',
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
