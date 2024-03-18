local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/rest-nvim/rest.nvim'

rockspec_format = '3.0'
package = 'rest.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fast Neovim http client written in Lua',
  detailed = '',
  labels = { 'curl', 'http-client', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'rest-client' } ,
  homepage = 'https://github.com/rest-nvim/rest.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-nio', 'lua-curl', 'mimetypes', 'xml2lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rest.nvim-' .. '2.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}
