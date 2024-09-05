local git_ref = 'v3.5.0'
local modrev = '3.5.0'
local specrev = '1'

local repo_url = 'https://github.com/rest-nvim/rest.nvim'

rockspec_format = '3.0'
package = 'rest.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fast Neovim http client written in Lua',
  detailed = [[
A very fast, powerful, extensible and asynchronous Neovim HTTP client written in Lua.
rest.nvim by default makes use of its own `curl` wrapper to make requests and a tree-sitter parser to parse http files.]],
  labels = { 'curl', 'http-client', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'rest-client' } ,
  homepage = 'https://github.com/rest-nvim/rest.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio', 'mimetypes', 'xml2lua', 'fidget.nvim' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rest.nvim-' .. '3.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'ftdetect', 'plugin', 'queries', 'syntax' } ,
}
