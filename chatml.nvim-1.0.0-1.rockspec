local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/chatml.nvim'

rockspec_format = '3.0'
package = 'chatml.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'OpenAI chat completion request (JSON) ⇋ markdown & sent requests',
  detailed = [[
A template for Neovim plugin]],
  labels = { },
  homepage = 'https://github.com/S1M0N38/chatml.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'chatml.nvim-' .. '1.0.0',
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
