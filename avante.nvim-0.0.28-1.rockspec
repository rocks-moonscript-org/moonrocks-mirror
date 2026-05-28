local git_ref = 'v0.0.28'
local modrev = '0.0.28'
local specrev = '1'

local repo_url = 'https://github.com/yetone/avante.nvim'

rockspec_format = '3.0'
package = 'avante.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use your Neovim like using Cursor AI IDE!',
  detailed = [[
avante.nvim** is a Neovim plugin designed to emulate the behaviour of the [Cursor](https://www.cursor.com) AI IDE. It provides users with AI-driven code suggestions and the ability to apply these recommendations directly to their source files with minimal effort.]],
  labels = { 'neovim', 'ai', 'llm' } ,
  homepage = 'https://github.com/yetone/avante.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua == 5.1', 'luarocks >= 3.11.1, < 4.0.0', 'plenary.nvim', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'avante.nvim-' .. '0.0.28',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin', 'syntax' } ,
}
