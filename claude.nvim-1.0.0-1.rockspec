local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/claude.nvim'

rockspec_format = '3.0'
package = 'claude.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simiple claude code integration',
  detailed = [[
A simple plugin to integrate Claude Code in Neovim]],
  labels = { },
  homepage = 'https://github.com/S1M0N38/claude.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'claude.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
