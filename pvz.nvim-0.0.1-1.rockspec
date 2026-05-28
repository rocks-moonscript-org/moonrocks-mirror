local git_ref = '0.0.1'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/pvz.nvim'

rockspec_format = '3.0'
package = 'pvz.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/pvz.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev

description = {
  summary = 'A plants-vs-zombies user file editor based on neovim.',
  detailed = '',
  labels = { 'lua', 'neovim', 'vim' },
  homepage = 'https://github.com/Freed-Wu/pvz.nvim',
  license = 'GPL-3.0',
}

dependencies = { "lua >= 5.1", 'kaitai-struct', 'platformdirs', 'vim', 'yaml' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pvz.nvim-' .. '0.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "builtin",
  copy_directories = { 'plugin' },
}
