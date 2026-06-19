local git_ref = 'v6.15.0'
local modrev = '6.15.0'
local specrev = '1'

local repo_url = 'https://github.com/mistweaverco/kulala.nvim'

rockspec_format = '3.0'
package = 'kulala.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A fully-featured 🤏 HTTP/GraphQL/gRPC/Websocket-client 🐼 interface 🖥️ for Neovim ❤️, that supports the Jetbrains .http spec (with full scripting support).',
  detailed = '',
  labels = { 'neovim', 'kulala' } ,
  homepage = 'https://kulala.app/usage',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-kulala_http' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kulala.nvim-' .. '6.15.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}
