local git_ref = 'v0.3.0'
local modrev = '0.3.0'
local specrev = '1'

local repo_url = 'https://github.com/dfgordon/nvim-a2-pack'

rockspec_format = '3.0'
package = 'nvim-a2-pack'
version = modrev ..'-'.. specrev

description = {
  summary = 'Apple II cross development for Neovim',
  detailed = [[
Support for Apple II languages in Neovim, including
diagnostics, completions, hovers, and symbols.]],
  labels = { 'neovim', 'apple2', 'lsp' } ,
  homepage = 'https://github.com/dfgordon/nvim-a2-pack',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-a2-pack-' .. '0.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
