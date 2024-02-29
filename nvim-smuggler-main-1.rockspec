local git_ref = '73fb1e2160e3ed97e85671dcce55506b823ae35b'
local modrev = 'main'
local specrev = '1'

local repo_url = 'https://github.com/Klafyvel/nvim-smuggler'

rockspec_format = '3.0'
package = 'nvim-smuggler'
version = modrev ..'-'.. specrev

description = {
  summary = 'Send code to your Julia REPL, get diagnostics in return.',
  detailed = '',
  labels = { 'julia', 'julia-repl', 'julialang', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/Klafyvel/nvim-smuggler',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-smuggler-' .. '73fb1e2160e3ed97e85671dcce55506b823ae35b',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
